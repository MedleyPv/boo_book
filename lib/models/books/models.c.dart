part of 'models.dart';

extension CalendarBookCollectionX on CalendarBookCollection {
  CalendarBookModel? getByDate(DateTime date) {
    return entries
        .firstWhereOrDefault((entry) => entry.key.isSameDate(date))
        ?.value
        .firstOrNull;
  }
}
