import 'package:flutter/material.dart';
import 'package:test_app_food/domain/models/dish.dart';
import 'package:test_app_food/ui/common_widgets/network_image_with_loader.dart';
import 'package:test_app_food/ui/pages/category_page/widget/dish_card.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';
import 'package:test_app_food/ui/utils/app_text_styles.dart';

class DishTile extends StatelessWidget {
  final Dish dish;
  const DishTile({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tileWidth = (MediaQuery.of(context).size.width - 48) / 3;
    return InkWell(
      onTap: () async {
        return showDialog<void>(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return DishCard(dish: dish,);
          },
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: tileWidth,
            width: tileWidth,
            decoration: const BoxDecoration(
              color: AppColors.secondBackground,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Center(
              child: SizedBox(
                height: tileWidth * 0.8,
                width: tileWidth * 0.8,
                child: NetworkImageWithLoader(url: dish.imageUrl, height: 110)
              ),
            ),
          ),
          Text(dish.name, style: AppTextStyles.fontW400,),
        ],
      ),
    );
  }
}

