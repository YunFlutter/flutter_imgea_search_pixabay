import 'package:flutter_imgea_search_pixabay/core/result/result.dart';
import 'package:flutter_imgea_search_pixabay/data/data_source/image_source.dart';
import 'package:flutter_imgea_search_pixabay/data/dto/image_data_dto_entity.dart';
import 'package:flutter_imgea_search_pixabay/data/mapper/image_model_mapper.dart';
import 'package:flutter_imgea_search_pixabay/domin/model/image_model.dart';
import 'package:flutter_imgea_search_pixabay/domin/repository/image_repository.dart';

class ImageRepositoryImpl implements ImageRepository{
  final ImageSource _imageSource;

  const ImageRepositoryImpl({
    required ImageSource imageSource,
  }) : _imageSource = imageSource;


  @override
  Future<ImageDataDtoEntity> getImageToDto() async{
    final result = await _imageSource.getImage();

    switch(result) {
      case Success<Map<String,dynamic>, String>() : return ImageDataDtoEntity.fromJson(result.data);
      case Error<Map<String,dynamic>, String>() : return ImageDataDtoEntity(0, 0, []);
    }
  }

  @override
  Future<List<ImageModel>> getImageModelList() async{
    final dataDto = await getImageToDto();

    if(dataDto.hits == null) return [];

    if(dataDto.hits != null && dataDto.hits!.isEmpty) return [];

    return dataDto.hits!.map((items) => items!.toImageModel()).toList();

  }

  @override
  Future<ImageModel> getImageModelOne({required int id}) async{
    final List<ImageModel> imageList = await getImageModelList();
    return imageList.firstWhere((items) => items.id == id);
  }









}
