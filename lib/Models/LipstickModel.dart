

import 'dart:convert';

List<App> appFromJson(String str) => List<App>.from(json.decode(str).map((x) => App.fromJson(x)));

String appToJson(List<App> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class App {
  App({
    this.id,
    this.brand,
    this.name,
    this.price,
    this.priceSign,
    this.currency,
    this.imageLink,
    this.productLink,
    this.websiteLink,
    this.description,
    this.rating,
    this.category,
    this.productType,
    this.tagList,
    this.createdAt,
    this.updatedAt,
    this.productApiUrl,
    this.apiFeaturedImage,
    this.productColors,
  });

  int id;
  String brand;
  String name;
  String price;
  dynamic priceSign;
  dynamic currency;
  String imageLink;
  String productLink;
  String websiteLink;
  String description;
  int rating;
  String category;
  String productType;
  List<dynamic> tagList;
  DateTime createdAt;
  DateTime updatedAt;
  String productApiUrl;
  String apiFeaturedImage;
  List<ProductColor> productColors;

  factory App.fromJson(Map<String, dynamic> json) => App(
    id: json["id"],
    brand: json["brand"],
    name: json["name"],
    price: json["price"],
    priceSign: json["price_sign"],
    currency: json["currency"],
    imageLink: json["image_link"],
    productLink: json["product_link"],
    websiteLink: json["website_link"],
    description: json["description"],
    // rating: json["rating"] == null ? null : json["rating"],
    category: json["category"],
    productType: json["product_type"],
    tagList: List<dynamic>.from(json["tag_list"].map((x) => x)),
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    productApiUrl: json["product_api_url"],
    apiFeaturedImage: json["api_featured_image"],
    productColors: List<ProductColor>.from(json["product_colors"].map((x) => ProductColor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "brand": brand,
    "name": name,
    "price": price,
    "price_sign": priceSign,
    "currency": currency,
    "image_link": imageLink,
    "product_link": productLink,
    "website_link": websiteLink,
    "description": description,
    // "rating": rating == null ? null : rating,
    "category": category,
    "product_type": productType,
    "tag_list": List<dynamic>.from(tagList.map((x) => x)),
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "product_api_url": productApiUrl,
    "api_featured_image": apiFeaturedImage,
    "product_colors": List<dynamic>.from(productColors.map((x) => x.toJson())),
  };
}

class ProductColor {
  ProductColor({
    this.hexValue,
    this.colourName,
  });

  String hexValue;
  String colourName;

  factory ProductColor.fromJson(Map<String, dynamic> json) => ProductColor(
    hexValue: json["hex_value"],
    colourName: json["colour_name"],
  );

  Map<String, dynamic> toJson() => {
    "hex_value": hexValue,
    "colour_name": colourName,
  };
}