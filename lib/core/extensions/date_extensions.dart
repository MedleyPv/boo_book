extension DateStartTime on DateTime {
  static DateTime get monthStart {
    final now = DateTime.now();

    return DateTime(now.year, now.month);
  }

  static DateTime get weekStart {
    final now = DateTime.now();

    return now.subtract(Duration(days: now.weekday - 1));
  }

  static int dayPerMonth(DateTime date) {
    return DateTime(date.year, date.month + 1, 0).day;
  }
}

extension DateTimeX on DateTime {
  bool isSameDate(DateTime date) {
    return day == date.day && month == date.month && year == date.year;
  }
}
