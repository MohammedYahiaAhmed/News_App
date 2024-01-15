import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> category = const [
    CategoryModel(image: 'assets/health.avif', name: 'Health'),
    CategoryModel(image: 'assets/science.avif', name: 'Science'),
    CategoryModel(image: 'assets/technology.jpeg', name: 'Technology'),
    CategoryModel(image: 'assets/entertaiment.avif', name: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', name: 'Business'),
    CategoryModel(image: 'assets/entertaiment.avif', name: 'Entertainment'),
    // CategoryModel(image: 'assets/camera.jpg', name: 'Camera'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: category[index],
          );
        },
      ),
    );
  }
}
