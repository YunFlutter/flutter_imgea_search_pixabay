// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchPageState {

 String get searchText; List<ImageModel> get imageList;
/// Create a copy of SearchPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPageStateCopyWith<SearchPageState> get copyWith => _$SearchPageStateCopyWithImpl<SearchPageState>(this as SearchPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPageState&&(identical(other.searchText, searchText) || other.searchText == searchText)&&const DeepCollectionEquality().equals(other.imageList, imageList));
}


@override
int get hashCode => Object.hash(runtimeType,searchText,const DeepCollectionEquality().hash(imageList));

@override
String toString() {
  return 'SearchPageState(searchText: $searchText, imageList: $imageList)';
}


}

/// @nodoc
abstract mixin class $SearchPageStateCopyWith<$Res>  {
  factory $SearchPageStateCopyWith(SearchPageState value, $Res Function(SearchPageState) _then) = _$SearchPageStateCopyWithImpl;
@useResult
$Res call({
 String searchText, List<ImageModel> imageList
});




}
/// @nodoc
class _$SearchPageStateCopyWithImpl<$Res>
    implements $SearchPageStateCopyWith<$Res> {
  _$SearchPageStateCopyWithImpl(this._self, this._then);

  final SearchPageState _self;
  final $Res Function(SearchPageState) _then;

/// Create a copy of SearchPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchText = null,Object? imageList = null,}) {
  return _then(SearchPageState(
searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,imageList: null == imageList ? _self.imageList : imageList // ignore: cast_nullable_to_non_nullable
as List<ImageModel>,
  ));
}

}


// dart format on
