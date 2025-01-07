class JsonMapper {
  static Map<String, dynamic> toCoinInternMap(Map<String, dynamic> map) {
    return {
      "key": map["key"],
      "name": map["name_en"],
      "continent": map["continent"],
      "image": map["image"]
    };
  }
}
