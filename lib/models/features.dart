class Features {
  final String id;
  final String title;
  final String description;
  final String content;
  final String image;
  final String found;
  final String category;

  const Features({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.image,
    required this.found,
    required this.category,
  });

  factory Features.fromJson(Map<String, dynamic> json) {
    return Features(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      content: json['content'],
      image: json['image'],
      found: json['found'],
      category: json['category'],
    );
  }
}
