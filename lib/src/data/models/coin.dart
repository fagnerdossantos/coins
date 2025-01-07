final class Coin {
  final String key;
  final String name;
  final String continent;
  final String imagePath;
  final double price;
  final double low;
  final double high;
  final double pctChange;
  Coin({
    required this.key,
    required this.name,
    required this.continent,
    required this.imagePath,
    required this.price,
    required this.low,
    required this.high,
    required this.pctChange,
  });

  factory Coin.fromMap(Map<String, dynamic> map) {
    return Coin(
      key: map['key'] as String,
      name: map['name'] as String,
      continent: map['continent'] as String,
      imagePath: map['imagePath'] as String,
      price: double.parse(map['price'] as String),
      low: double.parse(map['low'] as String),
      high: double.parse(map['high'] as String),
      pctChange: double.parse(map['pctChange'] as String),
    );
  }
}
