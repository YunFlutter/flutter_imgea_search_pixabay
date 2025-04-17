import 'package:flutter_imgea_search_pixabay/core/result/result.dart';

abstract interface class ImageSource {
  Future<Result<Map<String,dynamic>, String>> getImage();
}