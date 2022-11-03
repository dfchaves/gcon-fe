class CategoriesModel {
  final String id;
  final String title;
  final String description;
  final String image;

  const CategoriesModel({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
    );
  }
}
