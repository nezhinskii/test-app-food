import 'package:flutter/material.dart';
import 'package:test_app_food/domain/models/category.dart';
import 'package:test_app_food/ui/utils/app_text_styles.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key? key, required this.category}) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(category.imageUrl)
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 12, right: 150),
            child: Text(category.name, style: AppTextStyles.main500.copyWith(fontSize: 20),),
          ),
        ],
      ),
    );
  }
}
