// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_dish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiDish _$ApiDishFromJson(Map<String, dynamic> json) => ApiDish(
      id: json['id'] as int,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      description: json['description'] as String,
      imageUrl: json['image_url'] as String,
      tags: (json['tegs'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ApiDishToJson(ApiDish instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'price': instance.price,
      'weight': instance.weight,
      'tegs': instance.tags,
    };
