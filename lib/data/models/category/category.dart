import 'package:json_annotation/json_annotation.dart';
import 'package:test_app_food/domain/models/category.dart';
part 'category.g.dart';

@JsonSerializable()
class ApiCategory{
  int id;
  String name;
  @JsonKey(name: 'image_url')
  String imageUrl;
  ApiCategory({required this.id, required this.name, required this.imageUrl});
  factory ApiCategory.fromJson(Map<String, dynamic> json) => _$ApiCategoryFromJson(json);
  Category domainCategory() => Category(id, name, imageUrl);
}