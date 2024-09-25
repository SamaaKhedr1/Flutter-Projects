import 'package:flutter/cupertino.dart';
import '../Models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categories=const[
    CategoryModel(
        image: "assets/business.jpg",
        categoryName: "Business"
    ),
    CategoryModel(
        image: "assets/entertainment.jpg",
        categoryName: "Entertainment"
    ),
    CategoryModel(
        image: "assets/health.jpg",
        categoryName: "Health"
    ),
    CategoryModel(
        image: "assets/science.webp",
        categoryName: "Science"
    ),
    CategoryModel(
        image: "assets/sport.jpg",
        categoryName: "Sports"
    ),
    CategoryModel(
        image: "assets/technology.jpeg",
        categoryName: "Technology"
    ),
    CategoryModel(image: "assets/general.jpg", categoryName: "General"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:categories.length,
          itemBuilder: (context,index)
          {
            return CategoryCard(category: categories[index],);
          }),
    );
  }
}
