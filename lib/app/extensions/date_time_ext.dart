import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String defaultFormat() => DateFormat('MM/dd/yyyy').format(this);
  String toDDMMYYYY() => DateFormat('dd-MM-yyyy').format(this);
  bool isSameDay(DateTime? dateTime) {
    if (dateTime == null) return false;
    return year == dateTime.year && month == dateTime.month && day == dateTime.day;
  }
}
