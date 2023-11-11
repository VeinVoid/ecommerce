class Category {
  int id;
  String categoryName;
  String categoryIcon;

  Category({
    required this.id,
    required this.categoryName,
    required this.categoryIcon,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      categoryName: json['category_name'],
      categoryIcon: json['category_icon'],
    );
  }
}
