import 'package:test_app_food/data/repositories/api_categories_repository.dart';
import 'package:test_app_food/data/repositories/api_dishes_repository.dart';
import 'package:test_app_food/data/services/api_service.dart';
import 'package:test_app_food/domain/repositories/categories_repository.dart';
import 'package:dio/dio.dart';
import 'package:test_app_food/domain/repositories/dishes_repository.dart';

abstract class Repositories{
  static CategoriesRepository? _categoriesRepository;
  static DishesRepository? _dishesRepository;
  static final RestClient _restClient = RestClient(Dio());

  static CategoriesRepository categoriesRepository(){
    _categoriesRepository ??= ApiCategoriesRepository(_restClient);
    return _categoriesRepository!;
  }

  static DishesRepository dishesRepository(){
    _dishesRepository ??= ApiDishesRepository(_restClient);
    return _dishesRepository!;
  }
}