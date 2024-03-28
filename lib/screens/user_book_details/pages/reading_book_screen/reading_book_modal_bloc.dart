import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/blocs/calendar/calendar_bloc.dart';
import 'package:boo_book/blocs/index.dart';
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
  final CalendarBloc calendarBloc;
  final BooksRepository booksRepository;

  ReadingBookModalBloc({
    @factoryParam required this.initial,
    required this.calendarBloc,
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
      initialValue: initial.readingRecords.firstOrNull?.pageCount,
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

    final recordsSum =
        records.value.fold((pageCount: 0, duration: 0), (prev, record) {
      return (
        pageCount: prev.pageCount + record.pageCount,
        duration: prev.duration + record.duration
      );
    });

    final pagesPerSecond = recordsSum.pageCount / recordsSum.duration;

    try {
      final now = DateTime.now();
      final book = currentBook.value!;
      final latestRecords = records.value.first;
      final completed = latestRecords.pageCount == book.pageCount;

      final remaining = latestRecords.pageCount / book.pageCount;

      final payload = book.copyWith(
        readingRecords: records.value,
        completed: completed,
        started: book.started ?? now,
        lastRed: now,
        progress: (remaining * 100).toInt(),
        pagesPerSecond: pagesPerSecond,
        readingDuration: recordsSum.duration,
      );

      await booksRepository.updateBook(payload);
      calendarBloc.addRecordAsync(
        latestRecords.toCalendarModel(
          bookUid: book.uid,
          imageUrl: payload.imageUrl,
        ),
      );

      remainingTime.changeValue(book.pageCount ~/ pagesPerSecond);
      currentBook.changeValue(payload);

      emitSuccess(payload);
    } catch (e, stackTrace) {
      addError(e, stackTrace);

      emitFailure('Something went wrong!');
    }
  }
}
