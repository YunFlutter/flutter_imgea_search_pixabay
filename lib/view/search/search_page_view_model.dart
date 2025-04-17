import 'package:flutter/material.dart';
import 'package:flutter_imgea_search_pixabay/domin/repository/image_repository.dart';
import 'package:flutter_imgea_search_pixabay/view/search/search_page_state.dart';

class SearchPageViewModel with ChangeNotifier {
  final ImageRepository _imageRepository;

  SearchPageState _state = SearchPageState();

  SearchPageState get state => _state;

  SearchPageViewModel({required ImageRepository imageRepository})
    : _imageRepository = imageRepository;

  void getImageList() async {
    _state = state.copyWith(
      imageList: await _imageRepository.getImageModelList(),
    );
    notifyListeners();
  }

  void searchTextChange({required String text}) async {
    _state = _state.copyWith(
      searchText: text,
      imageList: await _imageRepository.getImageModelSearchList(text: text),
    );
    notifyListeners();
  }
}
