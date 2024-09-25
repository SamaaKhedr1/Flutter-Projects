import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import '../Services/news_services.dart';
import 'news_list_view.dart';



class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();

}


class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices(Dio()).getNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    //  الويدجيت دي افضل عشان السهولة وميكنش التطبيق تقيل وهو بيشتغل بحيث انه بيحمل اللي معروض على الشاشة فقط مش كل المعلومات اللي في التطبيق
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context,snapshot)
        {
          if(snapshot.hasData)
          {
            return NewsListView(articles: snapshot.data!,);
          }
          else if (snapshot.hasError)
          {
            return const SliverToBoxAdapter(child: Center(child: Text("oops there was an error ,try later"),
            ),
            );
          }
          else
          {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        }
        );
  }
}
//   Another solution but not advanced
/*   return isLoading ?
    const SliverToBoxAdapter(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    )
        : articles.isNotEmpty?NewsListView(articles: articles,)
    :const SliverToBoxAdapter(child: Center(child: Text("oops there was an error ,try later"),),);   */
