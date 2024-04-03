import 'package:intl/intl.dart' show NumberFormat;

final class CurrencyFormatter {
  //
  static final NumberFormat _pattern = NumberFormat("###,###.00", "pt_BR");

  String call(double number) => _pattern.format(number);
}
