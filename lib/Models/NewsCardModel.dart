class NewsCardModel {
  final String? imagePath;
  final String? NewsTitle;
  final String? NewsSubtitle;
  final String NewsURL;
  NewsCardModel(
      {required this.imagePath,
      required this.NewsTitle,
      required this.NewsSubtitle,
      required this.NewsURL});
  factory NewsCardModel.fromJson(json) {
    return NewsCardModel(
      imagePath: json["image"],
      NewsTitle: json["title"],
      NewsSubtitle: json["description"],
      NewsURL: json["url"],
    );
  }
}
