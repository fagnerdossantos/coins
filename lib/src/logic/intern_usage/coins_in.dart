/// Save coins info from intern json to help in http calls, handling and formatting
class CoinsIn {
  final String key;
  final String name;
  final String continent;
  final String parameter;

  CoinsIn({
    required this.key,
    required this.name,
    required this.continent,
    required this.parameter,
  });
}
