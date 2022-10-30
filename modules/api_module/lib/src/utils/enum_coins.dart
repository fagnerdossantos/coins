enum EnumCoins {
  /// Don't use comma inside the last [label] string;

  // Dolar (US)
  usdbrl(initial: "AM", label: "USD-BRL,", img: "assets/images/us.png"),

  // EURO
  eurbrl(initial: "EU", label: "EUR-BRL,", img: "assets/images/europe.png"),

  // Pounds (Britsh)
  gbpbrl(
      initial: "EU", label: "GBP-BRL,", img: "assets/images/great-britain.png"),

  // Renminbi (China)
  cnybrl(initial: "AS", label: "CNY-BRL,", img: "assets/images/china.png"),

  // IENE (Japan)
  jpybrl(initial: "AS", label: "JPY-BRL,", img: "assets/images/japan.png"),

  // Dolar (Australia)
  audbrl(initial: "OC", label: "AUD-BRL,", img: "assets/images/australia.png"),

  // Peso (Argentine)
  arsbrl(initial: "AM", label: "ARS-BRL", img: "assets/images/argentine.png");

  final String initial, label, img;

  const EnumCoins({
    required this.initial,
    required this.label,
    required this.img,
  });
}
