class Product {
  int? id;
  String? name;
  String? description;
  String? category;
  String? imageUrls;
  double? price;
  // int? availableQuantity;
  // List<String>? sizes;
  // List<String>? colors;

  Product({
    this.id,
    this.name,
    this.description,
    this.category,
    this.imageUrls,
    this.price,
    // this.availableQuantity,
    // this.sizes,
    // this.colors,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        name: json['title'],
        description: json['description'],
        price: json['price'],
        category: json['category'],
        imageUrls: json['image'],
      );

  Map<String, dynamic> toJson() => {};
}
