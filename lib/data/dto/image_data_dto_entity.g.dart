// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_data_dto_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageDataDtoEntity _$ImageDataDtoEntityFromJson(Map<String, dynamic> json) =>
    ImageDataDtoEntity(
      (json['total'] as num?)?.toInt(),
      (json['totalHits'] as num?)?.toInt(),
      (json['hits'] as List<dynamic>?)
          ?.map(
            (e) =>
                e == null
                    ? null
                    : ImageDataDtoHitsEntity.fromJson(
                      e as Map<String, dynamic>,
                    ),
          )
          .toList(),
    );

Map<String, dynamic> _$ImageDataDtoEntityToJson(ImageDataDtoEntity instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits,
    };

ImageDataDtoHitsEntity _$ImageDataDtoHitsEntityFromJson(
  Map<String, dynamic> json,
) => ImageDataDtoHitsEntity(
  (json['id'] as num?)?.toInt(),
  json['pageURL'] as String?,
  json['type'] as String?,
  json['tags'] as String?,
  json['previewURL'] as String?,
  (json['previewWidth'] as num?)?.toInt(),
  (json['previewHeight'] as num?)?.toInt(),
  json['webformatURL'] as String?,
  (json['webformatWidth'] as num?)?.toInt(),
  (json['webformatHeight'] as num?)?.toInt(),
  json['largeImageURL'] as String?,
  json['fullHDURL'] as String?,
  json['imageURL'] as String?,
  (json['imageWidth'] as num?)?.toInt(),
  (json['imageHeight'] as num?)?.toInt(),
  (json['imageSize'] as num?)?.toInt(),
  (json['views'] as num?)?.toInt(),
  (json['downloads'] as num?)?.toInt(),
  (json['likes'] as num?)?.toInt(),
  (json['comments'] as num?)?.toInt(),
  (json['user_id'] as num?)?.toInt(),
  json['user'] as String?,
  json['userImageURL'] as String?,
);

Map<String, dynamic> _$ImageDataDtoHitsEntityToJson(
  ImageDataDtoHitsEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'pageURL': instance.pageURL,
  'type': instance.type,
  'tags': instance.tags,
  'previewURL': instance.previewURL,
  'previewWidth': instance.previewWidth,
  'previewHeight': instance.previewHeight,
  'webformatURL': instance.webformatURL,
  'webformatWidth': instance.webformatWidth,
  'webformatHeight': instance.webformatHeight,
  'largeImageURL': instance.largeImageURL,
  'fullHDURL': instance.fullHDURL,
  'imageURL': instance.imageURL,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
  'imageSize': instance.imageSize,
  'views': instance.views,
  'downloads': instance.downloads,
  'likes': instance.likes,
  'comments': instance.comments,
  'user_id': instance.userId,
  'user': instance.user,
  'userImageURL': instance.userImageURL,
};
