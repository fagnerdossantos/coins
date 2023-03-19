class CoinsModel {
  final String key;
  final String name;
  final String code;
  final String initials;
  final String flag;
  final String price;
  final String high;
  final String low;

  CoinsModel({
    required this.key,
    required this.name,
    required this.code,
    required this.initials,
    required this.flag,
    required this.price,
    required this.high,
    required this.low,
  });

  factory CoinsModel.fromMap(Map<String, dynamic> map) {
    return CoinsModel(
      key: map['key'] as String,
      name: map['name'] as String,
      code: map['code'] as String,
      initials: map['initials'] as String,
      flag: map['flag'] as String,
      price: map['bid'] as String,
      high: map['high'] as String,
      low: map['low'] as String,
    );
  }
}
