import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_food/domain/models/dish.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState.empty());
  final Map<Dish, int> cartItems = {};
  double orderPrice = 0;

  void addToCart(Dish dish){
    cartItems[dish] = (cartItems[dish] ?? 0) + 1;
    orderPrice += dish.price;
    emit(CartState.keeping(cartItems, orderPrice));
  }

  void removeFromCart(Dish dish){
    final currentCount = cartItems[dish];
    if (currentCount == null){
      return;
    }
    orderPrice -= dish.price;
    if (currentCount == 1){
      cartItems.remove(dish);
    } else {
      cartItems[dish] = currentCount - 1;
    }
    if (cartItems.isEmpty){
      emit(const CartState.empty());
    } else {
      emit(CartState.keeping(cartItems, orderPrice));
    }
  }
}
