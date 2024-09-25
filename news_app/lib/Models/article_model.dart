class ArticleModel
{
  final String? image;
  final String? subTitle;
  final String title;
  ArticleModel({required this.image ,required this.subTitle , required this.title});

  factory ArticleModel.fromJson(json){
    return ArticleModel(
      image: json["urlToImage"],
      subTitle: json["description"],
      title: json["title"],
    );
  }

}