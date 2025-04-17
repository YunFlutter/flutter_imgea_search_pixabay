import 'package:flutter/material.dart';
import 'package:flutter_imgea_search_pixabay/core/result/result.dart';
import 'package:flutter_imgea_search_pixabay/data/data_source/image_source_impl.dart';
import 'package:flutter_imgea_search_pixabay/data/repository/image_repository_impl.dart';
import 'dart:developer' as dev;

import 'package:flutter_imgea_search_pixabay/view/search/search_page_screen.dart';
import 'package:flutter_imgea_search_pixabay/view/search/search_page_view_model.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchPageScreen(
        viewModel: SearchPageViewModel(
          imageRepository: ImageRepositoryImpl(imageSource: ImageSourceImpl()),
        )..getImageList(),
      ),
    );
  }
}
