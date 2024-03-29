import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_app_food/domain/models/category.dart';
import 'package:test_app_food/routes/app_router.gr.dart';
import 'package:test_app_food/ui/common_widgets/network_image_with_loader.dart';
import 'package:test_app_food/ui/utils/app_text_styles.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key? key, required this.category}) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: InkWell(
        onTap: () {
          context.router.push(CategoryRoute(category: category));
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: NetworkImageWithLoader(url: category.imageUrl, height: 148,)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 12, right: 150),
              child: Text(category.name, style: AppTextStyles.fontW500.copyWith(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}