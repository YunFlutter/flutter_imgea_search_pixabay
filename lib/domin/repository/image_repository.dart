import 'package:flutter_imgea_search_pixabay/core/result/result.dart';
import 'package:flutter_imgea_search_pixabay/data/dto/image_data_dto_entity.dart';
import 'package:flutter_imgea_search_pixabay/domin/model/image_model.dart';

abstract interface class ImageRepository {
  Future<ImageDataDtoEntity> getImageToDto();

  Future<List<ImageModel>> getImageModelList();

  Future<ImageModel> getImageModelOne({required int id});

}