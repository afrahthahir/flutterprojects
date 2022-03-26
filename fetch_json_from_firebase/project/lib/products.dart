class Products {
  final int id;
  final int productRating;
  final String productName;
  final String productUrl;
  final String productDescription;

  Products({
    required this.id,
    required this.productDescription,
    required this.productName,
    required this.productRating,
    required this.productUrl,
  });

  static Products fromJson(json) => Products(
        id: json["id"],
        productName: json["productName"],
        productDescription: json["productDescription"],
        productUrl: json["productUrl"],
        productRating: json["productRating"],
      );
}
