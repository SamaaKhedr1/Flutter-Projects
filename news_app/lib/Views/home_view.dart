import 'package:flutter/material.dart';
import 'package:news_app/Widgets/category_list_view.dart';
import 'package:news_app/Widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
            Text("Cloud",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold ),)
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child:CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView(),),
            SliverToBoxAdapter(
              child: SizedBox(
              height: 32,
            ),
            ),
            NewsListViewBuilder(category: 'general',),
          ],
        )
        /*Column(
        children: [
          CategoryListView(),
          SizedBox(
              height: 32),
          Expanded(child: NewsListView()),
        ],
      ),  */
      ),

      //body: const NewsListView(),


    );
  }
}
