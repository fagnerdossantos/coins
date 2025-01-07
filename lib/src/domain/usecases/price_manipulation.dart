class PriceManipulation {
  double convert(double amount, double firstInBRL, double secondInBRL) {
    if (firstInBRL <= 0 || secondInBRL <= 0) {
      throw ArgumentError("The value must be greater than zero");
    }
    return amount * (firstInBRL / secondInBRL);
  }

  double percentageChange(double currentPrice, double referencePrice) {
    return ((currentPrice - referencePrice) / referencePrice) * 100;
  }
}
