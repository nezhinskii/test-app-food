import 'package:test_app_food/data/repositories/api_categories_repository.dart';
import 'package:test_app_food/data/services/api_sevice.dart';
import 'package:test_app_food/domain/repositories/categories_repository.dart';
import 'package:dio/dio.dart';

abstract class Repositories{
  static CategoriesRepository? _categoriesRepository;
  static final RestClient _restClient = RestClient(Dio());

  static CategoriesRepository categoriesRepository(){
    _categoriesRepository ??= ApiCategoriesRepository(_restClient);
    return _categoriesRepository!;
  }
}