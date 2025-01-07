abstract interface class CoinsClientInterface {
  // Url Target
  Future<Map<String, dynamic>> fetch({required String coinsTarget});
}
