class Product {
  final int id;
  final int sellerId;
  final int categoryId;
  final String productName;
  final String productDescription;
  final int productPrice;
  final int productStock;
  final int productSaled;
  final String productImage;

  Product({
    required this.id,
    required this.sellerId,
    required this.categoryId,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
    required this.productStock,
    required this.productSaled,
    required this.productImage,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      sellerId: json['saller_id'],
      categoryId: json['category_id'],
      productName: json['product_name'],
      productDescription: json['product_description'],
      productPrice: json['product_price'],
      productStock: json['product_stock'],
      productSaled: json['product_saled'],
      productImage: json['product_image'],
    );
  }
}
