import 'package:flutter_imgea_search_pixabay/domin/model/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_page_state.freezed.dart';

@freezed
class SearchPageState with _$SearchPageState {
  final String searchText;
  final List<ImageModel> imageList;

  const SearchPageState({this.searchText = '', this.imageList = const []});
}
