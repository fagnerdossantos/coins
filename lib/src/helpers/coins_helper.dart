const List continentsList = [
  America.values,
  Africa.values,
  Asia.values,
  Europe.values,
  Oceania.values,
];

enum America {
  // US
  usdbrl(label: "USD-BRL,", continent: "AM", image: "assets/images/us.png"),

  // CANADA
  brlcad(label: "CAD-BRL,", continent: "AM", image: "assets/images/canada.png"),

  // MEXICO
  brlmxn(label: "MXN-BRL,", continent: "AM", image: "assets/images/mexico.png"),

  // CHILE
  brlclp(label: "CLP-BRL,", continent: "AM", image: "assets/images/chile.png"),

  // ARGENTINE
  brlars(
      label: "ARS-BRL,", continent: "AM", image: "assets/images/argentine.png"),
  ;

  final String label, continent, image;
  const America(
      {required this.label, required this.continent, required this.image});
}

enum Africa {
  //SOUTH AFRICA
  brlzar(
      label: "ZAR-BRL,",
      continent: "AF",
      image: "assets/images/south-africa.png"),
  ;

  final String label, continent, image;
  const Africa(
      {required this.label, required this.continent, required this.image});
}

enum Asia {
  // UNITED ARAB EMIRATES
  brlaed(
      label: "AED-BRL,",
      continent: "AS",
      image: "assets/images/united-arab-emirates.png"),

  // CHINA
  brlcny(label: "CNY-BRL,", continent: "AS", image: "assets/images/china.png"),

  // JAPAN
  brljpy(label: "JPY-BRL,", continent: "AS", image: "assets/images/japan.png"),

  // RUSSIA
  brlrub(label: "RUB-BRL,", continent: "AS", image: "assets/images/russia.png"),
  ;

  final String label, continent, image;
  const Asia(
      {required this.label, required this.continent, required this.image});
}

enum Europe {
  //EUROPE (EURO)
  brleur(label: "EUR-BRL,", continent: "EU", image: "assets/images/europe.png"),

  // UK
  brlgbp(
      label: "GBP-BRL,",
      continent: "EU",
      image: "assets/images/great-britain.png"),

  // SWITZERLAND
  brlchf(
      label: "CHF-BRL,",
      continent: "EU",
      image: "assets/images/switzerland.png"),
  ;

  final String label, continent, image;
  const Europe(
      {required this.label, required this.continent, required this.image});
}

enum Oceania {
  // AUSTRALIA
  brlaud(
      label: "AUD-BRL,", continent: "OC", image: "assets/images/australia.png"),

  // ZEALAND
  brlnzd(
      label: "NZD-BRL",
      continent: "OC",
      image: "assets/images/new-zealand.png"),
  ;

  final String label, continent, image;
  const Oceania(
      {required this.label, required this.continent, required this.image});
}

// Refatorado
// class Currency {
//   final String label, continent, image;
//   const Currency({required this.label, required this.continent, required this.image});
// }

// class America {
//   static const Currency usdbrl = Currency(label: "USD-BRL,", continent: "AM", image: "assets/images/us.png");
//   static const Currency brlcad = Currency(label: "CAD-BRL,", continent: "AM", image: "assets/images/canada.png");
//   static const Currency brlmxn = Currency(label: "MXN-BRL,", continent: "AM", image: "assets/images/mexico.png");
//   static const Currency brlclp = Currency(label: "CLP-BRL,", continent: "AM", image: "assets/images/chile.png");
//   static const Currency brlars = Currency(label: "ARS-BRL,", continent: "AM", image: "assets/images/argentine.png");
// }

// class Africa {
//   static const Currency brlzar = Currency(label: "ZAR-BRL,", continent: "AF", image: "assets/images/south-africa.png");
// }

// class Asia {
//   static const Currency brlaed = Currency(label: "AED-BRL,", continent: "AS", image: "assets/images/united-arab-emirates.png");
//   static const Currency brlcny = Currency(label: "CNY-BRL,", continent: "AS", image: "assets/images/china.png");
//   static const Currency brljpy = Currency(label: "JPY-BRL,", continent: "AS", image: "assets/images/japan.png");
//   static const Currency brlrub = Currency(label: "RUB-BRL,", continent: "AS", image: "assets/images/russia.png");
// }

// class Europe {
//   static const Currency brleur = Currency(label: "EUR-BRL,", continent: "EU", image: "assets/images/europe.png");
//   static const Currency brlgbp = Currency(label: "GBP-BRL,", continent: "EU", image: "assets/images/great-britain.png");
//   static const Currency brlchf = Currency(label: "CHF-BRL,", continent: "EU", image: "assets/images/switzerland.png");
// }

// class Oceania {
//   static const Currency brlaud = Currency(label: "AUD-BRL,", continent: "OC", image: "assets/images/australia.png");
//   static const Currency brlnzd = Currency(label: "NZD-BRL", continent: "OC", image: "assets/images/new-zealand.png");
// }

// const List continentsList = [
//   America.values,
//   Africa.values,
//   Asia.values,
//   Europe.values,
//   Oceania.values,
// ];