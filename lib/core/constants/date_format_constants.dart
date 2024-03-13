import 'package:boo_book/localization/index.dart';

class DateFormatUtil {
  static DateFormat defaultDate = DateFormat('EE MM/dd/yyyy', 'en');
  static DateFormat defaultTime = DateFormat('hh:mm a', 'en');
  static DateFormat fullDate = DateFormat('EE, MM/dd/yyyy hh:mm a', 'en');
  static DateFormat shortDay = DateFormat('EE', 'uk');

  static DateFormat payloadDate = DateFormat('yyyy-mm-dd');
}
