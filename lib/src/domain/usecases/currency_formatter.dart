import 'package:intl/intl.dart' show NumberFormat;

final class CurrencyFormatter {
  //
  final _pattern = NumberFormat.currency(locale: "pt_BR", symbol: "R\$");
  final _patternDecimals = NumberFormat.currency(
    locale: "pt_BR",
    symbol: "R\$",
    decimalDigits: 3,
  );

  String format(double value) => switch (value) {
        < 0.01 => _patternDecimals.format(value),
        _ => _pattern.format(value),
      };
}
