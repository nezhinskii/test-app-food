import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:test_app_food/data/models/category/category.dart';
part 'api_sevice.g.dart';

@RestApi(baseUrl: "https://run.mocky.io/v3/")
abstract class RestClient{
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/058729bd-1402-4578-88de-265481fd7d54")
  Future<Map<String, List<ApiCategory>>> getCategories();
}