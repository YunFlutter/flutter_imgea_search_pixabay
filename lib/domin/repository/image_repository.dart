import 'package:flutter_imgea_search_pixabay/core/result/result.dart';
import 'package:flutter_imgea_search_pixabay/domin/model/image_model.dart';

abstract interface class ImageRepository {
  Future<Result<List<ImageModel>,String>> getImageModelList();

  Future<Result<ImageModel,String>> getImageModelOne({required int id});

}