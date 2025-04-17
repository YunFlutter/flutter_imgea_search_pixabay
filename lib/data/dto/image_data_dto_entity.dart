import 'package:json_annotation/json_annotation.dart';

part 'image_data_dto_entity.g.dart';

@JsonSerializable()
class ImageDataDtoEntity {
  final int? total;
  final int? totalHits;
  final List<ImageDataDtoHitsEntity?>? hits;

  ImageDataDtoEntity(this.total, this.totalHits, this.hits);

  factory ImageDataDtoEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageDataDtoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDataDtoEntityToJson(this);
}

@JsonSerializable()
class ImageDataDtoHitsEntity {
  final int? id;
  final String? pageURL;
  final String? type;
  final String? tags;
  final String? previewURL;
  final int? previewWidth;
  final int? previewHeight;
  final String? webformatURL;
  final int? webformatWidth;
  final int? webformatHeight;
  final String? largeImageURL;
  final String? fullHDURL;
  final String? imageURL;
  final int? imageWidth;
  final int? imageHeight;
  final int? imageSize;
  final int? views;
  final int? downloads;
  final int? likes;
  final int? comments;
  @JsonKey(name: 'user_id')
  final int? userId;
  final String? user;
  final String? userImageURL;

  ImageDataDtoHitsEntity(
    this.id,
    this.pageURL,
    this.type,
    this.tags,
    this.previewURL,
    this.previewWidth,
    this.previewHeight,
    this.webformatURL,
    this.webformatWidth,
    this.webformatHeight,
    this.largeImageURL,
    this.fullHDURL,
    this.imageURL,
    this.imageWidth,
    this.imageHeight,
    this.imageSize,
    this.views,
    this.downloads,
    this.likes,
    this.comments,
    this.userId,
    this.user,
    this.userImageURL,
  );

  factory ImageDataDtoHitsEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageDataDtoHitsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDataDtoHitsEntityToJson(this);
}
