enum FiatOrCrypto {
  fiat,
  cripto;
}

enum EnumCoins {
  /// Dont use the comma inside the last string;

  // Dolar (US)
  usdbrl(label: "USD-BRL,", key: "USDBRL", img: "assets/images/us.png"),

  // EURO
  eurbrl(label: "EUR-BRL,", key: "EURBRL", img: "assets/images/europe.png"),

  // Pounds (Britsh)
  gbpbrl(
      label: "GBP-BRL,", key: "GBPBRL", img: "assets/images/great-britain.png"),

  // Renminbi (China)
  cnybrl(label: "CNY-BRL,", key: "CNYBRL", img: "assets/images/china.png"),

  // IENE (Japan)
  jpybrl(label: "JPY-BRL,", key: "JPYBRL", img: "assets/images/japan.png"),

  // Dolar (Australia)
  audbrl(label: "AUD-BRL,", key: "AUDBRL", img: "assets/images/australia.png"),

  // Peso (Argentine)
  arsbrl(label: "ARS-BRL,", key: "ARSBRL", img: "assets/images/argentine.png"),

  // Bitcoin
  btcbrl(label: "BTC-BRL,", key: "BTCBRL", img: "assets/images/bitcoin.png"),

  // Ethereum
  ethbrl(label: "ETH-BRL", key: "ETHBRL", img: "assets/images/ethereum.png");

  final String label, key, img;
  const EnumCoins({
    required this.label,
    required this.key,
    required this.img,
  });
}
