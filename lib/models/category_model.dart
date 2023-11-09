class Category {
  int id;
  String categoryName;
  String categoryIcon;
  DateTime createdAt;
  DateTime updatedAt;

  Category({
    required this.id,
    required this.categoryName,
    required this.categoryIcon,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      categoryName: json['category_name'],
      categoryIcon: json['category_icon'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
