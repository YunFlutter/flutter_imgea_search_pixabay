import 'package:flutter_imgea_search_pixabay/core/result/result.dart';

abstract interface class ImageSource {
  Future<Result<Map<String, dynamic>, String>> getImage();
  Future<Result<Map<String, dynamic>, String>> getImagePage({
    required int pageInt,
    required String searchKeyword,
  });
}
