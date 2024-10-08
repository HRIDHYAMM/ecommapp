import 'package:json_annotation/json_annotation.dart';

part 'products.g.dart'; // This should match the generated file name

@JsonSerializable()
class Products {
  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "name")
  String? name;

  @JsonKey(name: "description")
  String? description;

  @JsonKey(name: "category")
  String? category;

  @JsonKey(name: "image")
  String? image;

  @JsonKey(name: "price")
  double? price;

  @JsonKey(name: "brand")
  String? brand;

  @JsonKey(name: "offer")
  bool? offer;

  Products({
    this.id,
    this.name,
    this.description,
    this.category,
    this.image,
    this.price,
    this.brand,
    this.offer,
  });

  factory Products.fromJson(Map<String, dynamic> json) => _$ProductsFromJson(json);
  Map<String, dynamic> toJson() => _$ProductsToJson(this);
}
