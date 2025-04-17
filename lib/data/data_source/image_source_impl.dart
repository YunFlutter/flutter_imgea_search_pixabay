import 'dart:convert';

import 'package:flutter_imgea_search_pixabay/core/env_file/api_key.dart';
import 'package:flutter_imgea_search_pixabay/core/result/result.dart';
import 'package:flutter_imgea_search_pixabay/data/data_source/image_source.dart';
import 'package:flutter_imgea_search_pixabay/data/dto/image_data_dto_entity.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ImageSourceImpl implements ImageSource {
  @override
  Future<Result<Map<String, dynamic>, String>> getImage() async {
    try {
      final Response response = await http.get(
        Uri.parse(
          'https://pixabay.com/api/?key=${ApiKey().pixabayAPI}&lang=ko&image_type=photo',
        ),
      );
      return Result.success(jsonDecode(response.body));
    } catch (e) {
      return Result.error('GetImage 실패 error: $e');
    }
  }

  @override
  Future<Result<Map<String, dynamic>, String>> getSearchImage({
    required String searchKeyword,
  }) async {
    try {
      final Response response = await http.get(
        Uri.parse(
          'https://pixabay.com/api/?key=${ApiKey().pixabayAPI}&image_type=photo&q=$searchKeyword',
        ),
      );
      return Result.success(jsonDecode(response.body));
    } catch (e) {
      return Result.error('GetImage 실패 error: $e');
    }
  }





}
