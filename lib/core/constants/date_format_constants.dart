import 'package:boo_book/localization/index.dart';

class DateFormatUtil {
  static DateFormat defaultDate = DateFormat('d.MM.y', 'en');
  static DateFormat shortDay = DateFormat('EE', 'uk');

  static DateFormat payloadDate = DateFormat('yyyy-mm-dd');
}
