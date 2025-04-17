import 'package:flutter_imgea_search_pixabay/data/dto/image_data_dto_entity.dart';
import 'package:flutter_imgea_search_pixabay/domin/model/image_model.dart';

extension ImageModelMapper on ImageDataDtoHitsEntity {
  ImageModel toImageModel() {
    return ImageModel(
      id: id ?? -1,
      previewURL: previewURL ?? '',
      imageURL: imageURL ?? '',
      tags: tags ?? '',
      previewImageWidth: previewWidth ?? 0,
      previewImageHeight: previewHeight ?? 0,
    );
  }
}
