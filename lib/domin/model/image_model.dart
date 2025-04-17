class ImageModel {
  final int id;
  final String previewURL;
  final String imageURL;
  final String tags;
  final int previewImageWidth;
  final int previewImageHeight;

  const ImageModel({
    required this.id,
    required this.previewURL,
    required this.imageURL,
    required this.tags,
    required this.previewImageWidth,
    required this.previewImageHeight,
  });
}
