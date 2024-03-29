part of 'models.dart';

extension CalendarBookCollectionX on CalendarBookCollection {
  CalendarBookModel? getByDate(DateTime date) {
    return entries
        .firstWhereOrDefault((entry) => entry.key.isSameDate(date))
        ?.value
        .firstOrNull;
  }
}

extension UserBooksX on List<UserBookModel> {
  List<UserBookModel> get finished {
    return where((book) => book.completed).toList();
  }

  List<UserBookModel> get stillReading {
    return where((book) => !book.completed).toList();
  }

  List<UserBookModel> get withReview {
    return where((book) => book.review?.description.isNotEmpty ?? false)
        .toList();
  }
}
