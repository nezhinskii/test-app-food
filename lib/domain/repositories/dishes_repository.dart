import 'package:test_app_food/domain/models/dish.dart';

abstract class DishesRepository {
  Future<List<Dish>> getDishes();
}