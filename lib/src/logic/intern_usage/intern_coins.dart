final class InternCoins {
  static Map<String, Map<String, dynamic>> get coins => _coins;
}

const Map<String, Map<String, dynamic>> _coins = {
  "Criptomoedas": {
    "BTC": "btc.png",
    "ETH": "eth.png",
    "XRP": "xrp.png",
  },
  "América": {
    "USD": "united-states.png",
    "CAD": "canada.png",
    "MXN": "mexico.png",
    "ARS": "argentine.png",
    "CLP": "chile.png",
    "PYG": "paraguay.png",
    "UYU": "uruguay.png"
  },
  "África": {"ZAR": "south-africa.png"},
  "Europa": {
    "EUR": "eu.png",
    "GBP": "uk.png",
    "CHF": "switzerland.png",
    "SEK": "sweden.png",
    "DKK": "denmark.png",
    "NOK": "norway.png",
    "PLN": "poland.png"
  },
  "Ásia": {
    "CNY": "china.png",
    "JPY": "japan.png",
    "INR": "india.png",
    "HKD": "hong-kong.png",
    "SGD": "singapore.png"
  },
  "Oceania": {"AUD": "australia.png", "NZD": "new-zealand.png"}
};
