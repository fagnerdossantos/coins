abstract class ImageConvertInterface {
  String encode({required String image});
  List<int> decode({required String image});
}
