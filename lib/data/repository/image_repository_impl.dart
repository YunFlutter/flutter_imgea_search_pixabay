import 'package:flutter_imgea_search_pixabay/core/result/result.dart';
import 'package:flutter_imgea_search_pixabay/data/data_source/image_source.dart';
import 'package:flutter_imgea_search_pixabay/domin/model/image_model.dart';
import 'package:flutter_imgea_search_pixabay/domin/repository/image_repository.dart';

class ImageRepositoryImpl implements ImageRepository{
  final ImageSource _imageSource;

  const ImageRepositoryImpl({
    required ImageSource imageSource,
  }) : _imageSource = imageSource;

  @override
  Future<Result<List<ImageModel>, String>> getImageModelList() {
    // TODO: implement getImageModelList
    throw UnimplementedError();
  }

  @override
  Future<Result<ImageModel, String>> getImageModelOne({required int id}) {
    // TODO: implement getImageModelOne
    throw UnimplementedError();
  }






}
