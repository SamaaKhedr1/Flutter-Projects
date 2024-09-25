/*import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Services/news_services.dart';
import '../Models/article_model.dart';
import 'news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel>articles = [];
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async
  {
    articles = await NewsServices(Dio()).getNews();
    isLoading = false;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    //  الويدجيت دي افضل عشان السهولة وميكنش التطبيق تقيل وهو بيشتغل بحيث انه بيحمل اللي معروض على الشاشة فقط مش كل المعلومات اللي في التطبيق
    return isLoading ?
    const SliverToBoxAdapter(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    )
        : SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
                (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: NewsTile(articleModel: articles[index],),
              );
            }
        )
    );
  }
} */