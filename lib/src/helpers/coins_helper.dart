List<List<String>> getCountriesByContinent(Continents continent) {
  return _continents[continent]!;
}

enum Continents {
  america(initials: "AM"),
  africa(initials: "AF"),
  asia(initials: "AS"),
  europe(initials: "EU"),
  oceania(initials: "OC");

  final String initials;
  const Continents({required this.initials});
}

final Map<Continents, List<List<String>>> _continents = {
  Continents.america: [
    ["USD-BRL,", "AM", "assets/images/us.png"],
    ["CAD-BRL,", "AM", "assets/images/canada.png"],
    ["MXN-BRL,", "AM", "assets/images/mexico.png"],
    ["CLP-BRL,", "AM", "assets/images/chile.png"],
    ["ARS-BRL,", "AM", "assets/images/argentine.png"],
  ],
  Continents.africa: [
    ["ZAR-BRL,", "AF", "assets/images/south-africa.png"],
  ],
  Continents.asia: [
    ["AED-BRL,", "AS", "assets/images/united-arab-emirates.png"],
    ["CNY-BRL,", "AS", "assets/images/china.png"],
    ["JPY-BRL,", "AS", "assets/images/japan.png"],
    ["RUB-BRL,", "AS", "assets/images/russia.png"],
  ],
  Continents.europe: [
    ["EUR-BRL,", "EU", "assets/images/europe.png"],
    ["GBP-BRL,", "EU", "assets/images/great-britain.png"],
    ["CHF-BRL,", "EU", "assets/images/switzerland.png"],
  ],
  Continents.oceania: [
    ["AUD-BRL,", "OC", "assets/images/australia.png"],
    ["NZD-BRL", "OC", "assets/images/new-zealand.png"],
  ],
};
