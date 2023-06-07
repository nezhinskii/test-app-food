import 'package:test_app_food/data/services/api_service.dart';
import 'package:test_app_food/domain/models/dish.dart';
import 'package:test_app_food/domain/repositories/dishes_repository.dart';

class ApiDishesRepository extends DishesRepository{
  final RestClient _restClient;
  ApiDishesRepository(this._restClient);

  @override
  Future<List<Dish>> getDishes() async {
    final apiDishes = await _restClient.getDishes();
    return apiDishes["dishes"]!.map((dish) => dish.domainDish()).toList();
  }

}