import 'package:intl/intl.dart';
class Formats {
  static String formatReadableNumber(double number){
    final foramttedNumber = NumberFormat.compactCurrency(
        decimalDigits: 0,
        symbol: '',
    ).format(number);
    return foramttedNumber;
  }
}