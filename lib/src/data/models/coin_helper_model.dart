import '../helpers/json_mapper.dart';

class CoinHelperModel {
  //
  final String key;
  final String name;
  final String continent;
  final String image;

  CoinHelperModel({
    required this.key,
    required this.name,
    required this.continent,
    required this.image,
  });

  factory CoinHelperModel.fromMap(Map<String, dynamic> map) {
    //
    final normalized = JsonMapper.toCoinInternMap(map);

    return CoinHelperModel(
      key: normalized["key"],
      name: normalized["name"],
      continent: normalized["continent"],
      image: normalized["image"],
    );
  }
}
