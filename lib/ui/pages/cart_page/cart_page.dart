import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_food/ui/common_widgets/app_text_button.dart';
import 'package:test_app_food/ui/common_widgets/common_app_bar.dart';
import 'package:test_app_food/ui/pages/cart_page/cubit/cart_cubit.dart';
import 'package:test_app_food/ui/pages/cart_page/widgets/cart_item_tile.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';
import 'package:test_app_food/ui/utils/app_text_styles.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(),
      backgroundColor: AppColors.background,
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          return state.when(
            empty: () => const Center(
              child: Text("Корзина пуста", style: AppTextStyles.fontW500,)
            ),
            keeping: (cartItems, orderPrice) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final key = cartItems.keys.elementAt(index);
                          return CartItemTile(dish: key, count: cartItems[key]!);
                        },
                        itemCount: cartItems.length,
                      ),
                    ),
                    AppTextButton(text: "Оплатить ${orderPrice.round()} ₽"),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
