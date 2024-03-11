class Product {
  final int id;
  final String name;
  final String type;
  final String description;
  final String brand;
  final double price;
  final List<ProductImage> images;

  Product({
    required this.id,
    required this.name,
    required this.type,
    required this.description,
    required this.brand,
    required this.price,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    List<dynamic> imagesData =
        json['ProductVariations'][0]['ProductVarientImages'];
    List<ProductImage> imagesList =
        imagesData.map((json) => ProductImage.fromJson(json)).toList();

    return Product(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      description: json['description'],
      brand: json['Brands']['brand_name'],
      price: json['ProductVariations'][0]['price'].toDouble(),
      images: imagesList,
    );
  }
}

class ProductImage {
  final int id;
  final String imagePath;

  ProductImage({
    required this.id,
    required this.imagePath,
  });

  factory ProductImage.fromJson(Map<String, dynamic> json) {
    return ProductImage(
      id: json['id'],
      imagePath: json['image_path'],
    );
  }
}
