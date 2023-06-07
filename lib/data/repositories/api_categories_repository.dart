import 'package:test_app_food/domain/models/category.dart';
import 'package:test_app_food/data/services/api_service.dart';
import 'package:test_app_food/domain/repositories/categories_repository.dart';

class ApiCategoriesRepository extends CategoriesRepository{
  final RestClient _restClient;
  ApiCategoriesRepository(this._restClient);

  @override
  Future<List<Category>> getCategories() async {
    final apiCategories = await _restClient.getCategories();
    return apiCategories['сategories']!.map((category) => category.domainCategory()).toList();
  }
}