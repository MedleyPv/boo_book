import 'dart:async';
import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/repositories/index.dart';

@injectable
class ReadingBookModalBloc extends FormBloc<UserBookModel, String> {
  late final SelectFieldBloc<UserBookModel> currentBook;

  late final NumberFieldBloc timerSeconds;
  late final NumberFieldBloc remainingTime;

  late final NumberFieldBloc startPage;

  late final ListFieldBloc<BookReadingRecord> records;

  final UserBookModel initial;
  final BooksRepository booksRepository;

  ReadingBookModalBloc({
    @factoryParam required this.initial,
    required this.booksRepository,
  }) {
    currentBook = SelectFieldBloc(
      initialValue: initial,
      forceValueToSet: true,
    );

    remainingTime = NumberFieldBloc(
      initialValue: initial.pagesPerSecond != 0
          ? initial.pageCount ~/ initial.pagesPerSecond
          : null,
    );

    startPage = NumberFieldBloc(
      initialValue: initial.readingRecords.lastOrNull?.pageCount,
    );

    timerSeconds = NumberFieldBloc(
      initialValue: 0,
      extraData: TimerStatus.disabled,
    );

    records = ListFieldBloc(
      initialValue: initial.readingRecords,
    );

    addFields([
      timerSeconds,
      remainingTime,
      startPage,
      currentBook,
      records,
    ]);

    // All subscriptions which are added through [addSubscriptions]
    // Are going to be cancelled in bloc.onClose
    // ignore: cancel_subscriptions
    final timerSubscription = Stream.periodic(
      const Duration(seconds: 1),
      (value) {
        return value;
      },
    ).listen((event) {
      final currentValue = timerSeconds.value ?? 0;

      timerSeconds.changeValue(currentValue + 1, forceChange: true);
    })
      ..pause();

    addSubscriptions([
      timerSubscription,
      timerSeconds.extraDataStream.listen((timerStatus) {
        switch (timerStatus) {
          case TimerStatus.active:
            timerSubscription.resume();
          case TimerStatus.paused:
            timerSubscription.pause();
          case TimerStatus.disabled:
          // Do nothing
        }
      }),
    ]);
  }

  void finishReading(int pageCount) {
    final userRed = pageCount - (startPage.value ?? 0);
    final remaining = userRed / initial.pageCount;

    final newRecords = BookReadingRecord(
      id: records.length,
      created: DateTime.now(),
      duration: timerSeconds.value ?? 0,
      pageCount: pageCount,
      percentage: (remaining * 100).toInt(),
    );

    timerSeconds.changeValue(0);
    records.insert(0, newRecords);

    submit();
  }

  @override
  FutureOr<void> onSubmit() async {
    emitLoading();

    final recordsSum = records.value.fold((0, 0), (prev, record) {
      return (prev.$1 + record.pageCount, prev.$2 + record.duration);
    });

    final pagesPerSecond = recordsSum.$1 / recordsSum.$2;

    try {
      final book = currentBook.value!;
      final latestRecords = records.value.first;
      final completed = latestRecords.pageCount == book.pageCount;

      final remaining = latestRecords.pageCount / book.pageCount;

      final payload = book.copyWith(
        readingRecords: records.value,
        completed: completed,
        lastRed: DateTime.now(),
        progress: (remaining * 100).toInt(),
        pagesPerSecond: pagesPerSecond,
      );

      await booksRepository.updateBook(payload);
      remainingTime.changeValue(book.pageCount ~/ pagesPerSecond);

      currentBook.changeValue(payload);

      emitInitial();
    } catch (e, stackTrace) {
      addError(e, stackTrace);

      log(stackTrace.toString());

      emitFailure('Something went wrong!');
    }
  }
}
