import 'package:intl/intl.dart' show NumberFormat;

final class CurrencyFormatter {
  //
  static final NumberFormat _pattern = NumberFormat("###,###.00", "pt_BR");

  String call(double price) {
    if (price < 1) {
      return price.toStringAsFixed(4).replaceAll(".", ",");
    }

    return _pattern.format(price);
  }
}
