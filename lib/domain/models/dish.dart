typedef Tag = String;

class Dish{
  final int id;
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
}