class NewsModel{
  NewsModel({ required this.headline, this.description,this.imageSource, this.imageName, this.source});
  String headline;
  List<String>? description;
  String? imageSource;
  String? imageName;
  String? source;
  bool isDetailVisible = false;
}