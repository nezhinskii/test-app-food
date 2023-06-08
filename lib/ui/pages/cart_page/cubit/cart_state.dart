part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.empty() = _Empty;
  const factory CartState.keeping(Map<Dish, int> cartItems, double orderPrice) = _Keeping;
}
