import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_food/domain/models/dish.dart';
import 'package:test_app_food/ui/pages/cart_page/cubit/cart_cubit.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';
import 'package:test_app_food/ui/utils/app_text_styles.dart';

class CartItemTile extends StatelessWidget {
  final Dish dish;
  final int count;
  const CartItemTile({Key? key, required this.dish, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final blockSize = MediaQuery.of(context).size.width * 0.16;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: blockSize,
            height: blockSize,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: AppColors.secondBackground
            ),
            child: Center(
              child: SizedBox(
                height: blockSize * 0.9,
                width: blockSize * 0.9,
                child: Image.network(dish.imageUrl),
              ),
            ),
          ),
        ),
        SizedBox(
          width: blockSize * 2.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dish.name, style: AppTextStyles.fontW500.copyWith(fontSize: 14),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("${dish.price.round()} ₽", style: AppTextStyles.fontW400,),
                  Text("· ${dish.weight.round()}г", style: AppTextStyles.dishWeight,),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: AppColors.cartActionBackground
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: InkWell(
                  onTap: () {
                    context.read<CartCubit>().removeFromCart(dish);
                  },
                  child: const Icon(Icons.remove, color: AppColors.icons,)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7),
                child: Text(count.toString(), style: AppTextStyles.fontW500.copyWith(fontSize: 14),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: InkWell(
                  onTap: () {
                    context.read<CartCubit>().addToCart(dish);
                  },
                  child: const Icon(Icons.add, color: AppColors.icons,)
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
