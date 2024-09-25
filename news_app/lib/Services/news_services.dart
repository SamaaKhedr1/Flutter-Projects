import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewsServices
{
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>>getNews({required String category})async
  {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=268e5deae60a48dfb116148f08beb029&category=$category');
      Map<String, dynamic>jsonData = response.data;
      List<dynamic>articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    }
    catch (e)
    {
      return [];
    }
    //print(jsonData);
    //print(jsonData["totalResults"]);
  }
}