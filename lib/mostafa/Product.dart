



class Product {

  final int id;
  final String name;
  // final String description;
  // final int brandId;
  // final Brand brand;
  // final String? brandName;
  // final String? brandLogoUrl;
  // final double rating;
  // final List<ProductVariation> variations;
  // final List<ProductProperty> availableProperties;

  Product({
    required this.id,
    required this.name,
    // required this.description,
    // required this.brandId,
    // required this.brand,
    // required this.brandName,
    // required this.brandLogoUrl,
    // required this.rating,
    // required this.variations,
    // required this.availableProperties,
  });


factory Product.fromJson(Map<String, dynamic> json) {
  return Product(
    id: json['id'],
    name: json['name'],
    // description: json['description'],
    // brandId: json['brandId'],
    // brand: json['brand'],
    // brandName: json['brandName'],
    // brandLogoUrl: json['brandLogoUrl'],
    // rating: json['rating'],
    // variations: json['variations'],
    // availableProperties: json['availableProperties'],
  );
}

  String? get description => null;

}


