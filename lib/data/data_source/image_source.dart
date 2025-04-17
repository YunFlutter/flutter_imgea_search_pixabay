import 'package:flutter_imgea_search_pixabay/core/result/result.dart';
import 'package:flutter_imgea_search_pixabay/data/dto/image_data_dto_entity.dart';

abstract interface class ImageSource {
  Future<Result<Map<String, dynamic>, String>> getImage();
  Future<Result<Map<String, dynamic>, String>> getImagePage({
    required int pageInt,
    required String searchKeyword,
  });


}
