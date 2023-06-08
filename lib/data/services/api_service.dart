import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:test_app_food/data/models/category/api_category.dart';
import 'package:test_app_food/data/models/dish/api_dish.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: "https://run.mocky.io/v3/")
abstract class RestClient{
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/058729bd-1402-4578-88de-265481fd7d54")
  Future<Map<String, List<ApiCategory>>> getCategories();

  @GET("/aba7ecaa-0a70-453b-b62d-0e326c859b3b")
  Future<Map<String, List<ApiDish>>> getDishes();
}