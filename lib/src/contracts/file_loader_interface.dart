abstract interface class FileLoaderInterface {
  Future<({Map<String, dynamic>? data, bool error})> json(String path);
}
