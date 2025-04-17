import 'package:flutter_imgea_search_pixabay/data/dto/image_data_dto_entity.dart';
import 'package:flutter_imgea_search_pixabay/domin/model/image_model.dart';

extension ImageModelMapper on ImageDataDtoHitsEntity {
  ImageModel toImageModel() {
    return ImageModel(
      id: id ?? -1,
      previewURL: previewURL ?? '',
      imageURL: largeImageURL ?? '',
      tags: tags ?? '',
      previewImageWidth: previewWidth ?? 0,
      previewImageHeight: previewHeight ?? 0,
      authorName: user ?? '',
      commentsCount: comments ?? 0,
      downloadsCount: downloads ?? 0,
      viewCount: views ?? 0,
      likeCount: likes ?? 0,
    );
  }
}
