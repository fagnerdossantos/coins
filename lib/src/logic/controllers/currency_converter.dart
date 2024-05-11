import '../models/coin.dart';

final class CurrencyConverter {
  //Result: Value in REAL and conversed to target
  static (double valInReal, double targetVal) convertCrypto(
      {required Coin crypto, required Coin target}) {
    //
    // final double cryptoInReal = double.parse(crypto.price);
    final double cryptoInReal = crypto.price;
    final double targetInReal = target.price;
    // final double targetInReal = double.parse(target.price);

    return (cryptoInReal, (cryptoInReal / targetInReal));
  }

  static percent({
    required double value,
    required double reference,
  }) {
    return (((value - reference) / reference) * 100).round();
  }
}
