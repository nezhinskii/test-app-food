typedef Tag = String;
typedef DishId = int;

class Dish{
  final DishId id;
  final String name, description, imageUrl;
  final double price, weight;
  final List<Tag> tags;
  Dish({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.description,
    required this.imageUrl,
    required this.tags
  });

  @override
  bool operator ==(Object other) => other is Dish && id == other.id;

  @override
  int get hashCode => id.hashCode;
}