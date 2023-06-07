import 'package:flutter/material.dart';
import 'package:test_app_food/domain/models/dish.dart';
import 'package:test_app_food/ui/common_widgets/network_image_with_loader.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';
import 'package:test_app_food/ui/utils/app_text_styles.dart';

class DishTile extends StatelessWidget {
  final Dish dish;
  const DishTile({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 105,
          width: (MediaQuery.of(context).size.width - 48) / 3,
          decoration: BoxDecoration(
            color: AppColors.secondBackground,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: SizedBox(
              height: 90,
              width: 90,
              child: NetworkImageWithLoader(url: dish.imageUrl, height: 110)
            ),
          ),
        ),
        Text(dish.name, style: AppTextStyles.fontW400,),
      ],
    );
  }
}
