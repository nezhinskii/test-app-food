import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_food/domain/models/dish.dart';
import 'package:test_app_food/ui/common_widgets/app_text_button.dart';
import 'package:test_app_food/ui/pages/cart_page/cubit/cart_cubit.dart';
import 'package:test_app_food/ui/pages/category_page/widget/small_card_button.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';
import 'package:test_app_food/ui/utils/app_text_styles.dart';

class DishCard extends StatelessWidget {
  final Dish dish;
  final BuildContext cartContext;
  const DishCard({
    super.key,
    required this.dish,
    required this.cartContext
  });

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.of(context).size.width - 32;
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      insetPadding: const EdgeInsets.all(0),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: cardWidth,
          minWidth: cardWidth,
          maxHeight: MediaQuery.of(context).size.height * 0.8
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.secondBackground,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          height: cardWidth * 0.7,
                          width: cardWidth * 0.6,
                          child: Image.network(dish.imageUrl)
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SmallCardButton(
                                child: Icon(Icons.favorite_border, color: AppColors.icons,)
                              ),
                              const SizedBox(width: 7,),
                              SmallCardButton(
                                action: () {
                                  context.router.pop();
                                },
                                child: const Icon(Icons.close_rounded, color: AppColors.icons,)
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                Text(dish.name, style: AppTextStyles.fontW500.copyWith(fontSize: 16),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      Text("${dish.price.round()} ₽", style: AppTextStyles.fontW400,),
                      Text("· ${dish.weight.round()}г", style: AppTextStyles.dishWeight,),
                    ],
                  ),
                ),
                Text(dish.description, style: AppTextStyles.dishDescription,),
                const SizedBox(height: 10,),
                AppTextButton(
                  text: "Добавить в корзину",
                  onPressed: () {
                    cartContext.read<CartCubit>().addToCart(dish);
                    context.router.pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}