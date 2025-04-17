class ImageModel {
  final int id;
  final String previewURL;
  final String imageURL;
  final String tags;
  final String authorName;
  final int previewImageWidth;
  final int previewImageHeight;
  final int viewCount;
  final int downloadsCount;
  final int likeCount;
  final int commentsCount;

  const ImageModel({
    required this.id,
    required this.previewURL,
    required this.imageURL,
    required this.tags,
    required this.authorName,
    required this.previewImageWidth,
    required this.previewImageHeight,
    required this.viewCount,
    required this.downloadsCount,
    required this.likeCount,
    required this.commentsCount,
  });
}
