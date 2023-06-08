import 'package:json_annotation/json_annotation.dart';
import 'package:test_app_food/domain/models/dish.dart';

part 'api_dish.g.dart';

@JsonSerializable()
class ApiDish{
  final int id;
  final String name;
  final String description;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final double price, weight;
  @JsonKey(name: 'tegs')
  final List<String> tags;
  ApiDish({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.description,
    required this.imageUrl,
    required this.tags
  });
  factory ApiDish.fromJson(Map<String, dynamic> json) => _$ApiDishFromJson(json);
  Dish domainDish() => Dish(
    id: id,
    description: description,
    name: name,
    price: price,
    weight: weight,
    imageUrl: imageUrl,
    tags: tags
  );
}