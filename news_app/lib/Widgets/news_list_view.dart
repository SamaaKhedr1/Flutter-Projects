import 'package:flutter/material.dart';
import '../Models/article_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel>articles;
  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return
    SliverList(
    delegate: SliverChildBuilderDelegate(
    childCount: articles.length,
    (context, index) {
    return Padding(
    padding: const EdgeInsets.only(bottom: 22),
    child: NewsTile(articleModel: articles[index],),
    );}
    )
    );



    /*ListView.builder(
      shrinkWrap: true,
      //physics: const BouncingScrollPhysics(),
      physics: const NeverScrollableScrollPhysics(),     // عشان تخلي الشاشة وهي بتسكرول متعملش الظل الازرق مجرد شكل ظريف بس مش بيأثر على الاداء
        itemCount: 10,
            itemBuilder: (context,index)
            {
              return const Padding(
                padding: EdgeInsets.only(bottom: 22),
                child: NewsTile(),
              );
            }
    );   */
  }
}