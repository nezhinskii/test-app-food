import 'package:test_app_food/domain/models/category.dart';

abstract class CategoriesRepository{
  Future<List<Category>> getCategories();
}