import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'package:news_app/Views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)
      {
        return CategoryView(
          category: category.categoryName,
        );
      },
        ),
        );
        },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 110,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.image),
            ),
          ),
          child: Center(
              child: Text(category.categoryName,
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),)),
        ),
      ),
    );
  }
}
