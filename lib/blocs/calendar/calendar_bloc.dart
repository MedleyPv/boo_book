import 'dart:async';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/repositories/index.dart';
import 'package:darq/darq.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'calendar_events.dart';

typedef CalendarState = NetworkState<CalendarBookCollection>;

@lazySingleton
class CalendarBloc extends NetworkBloc<CalendarBookCollection, CalendarState> {
  final CalendarRepository repository;

  CalendarBloc({
    required this.repository,
  }) : super(
          CalendarState(
            data: CalendarBookCollection(),
          ),
        ) {
    on<_AddRecordAsync>(_addRecordAsync);
  }

  void addRecordAsync(CalendarBookModel record) => add(_AddRecordAsync(record));

  @override
  Future<CalendarBookCollection> onLoadAsync() async {
    final now = DateTime.now();
    final from = DateTime(now.year, now.month, 0);
    final to = DateTime(now.year, now.month + 1, 0);

    final calendarData = await repository.getCalendarData(
      from: from,
      to: to,
    );

    final groupedData = calendarData.groupJoin(
      calendarData,
      (element, other) => {
        element.date: other,
      },
    );

    return {
      for (final data in groupedData)
        data.keys.first: data.values.expand((element) => element).toList(),
    };
  }

  FutureOr<void> _addRecordAsync(
    _AddRecordAsync event,
    Emitter<CalendarState> emit,
  ) async {
    var record = event.record;
    final data = CalendarBookCollection.from(state.data);

    final recordToReplace = state.data.getByDate(record.date);

    if (recordToReplace != null) {
      await repository.replaceCalendarRecord(recordToReplace.uid, record);

      final response = record.copyWith(uid: recordToReplace.uid);

      data[recordToReplace.date] = [response];
    } else {
      record = await repository.createCalendarRecord(record);

      data.addAll({
        record.date: [record],
      });
    }

    emit(
      state.copyWith(
        status: NetworkStatus.success,
        data: data,
      ),
    );
  }
}
