import 'package:shamo/models/CategoryModel.dart';
import 'package:shamo/models/GalleryModel.dart';

class ProductModel {
  int id;
  String name;
  double price;
  String description;
  String tags;
  CategoryModel category;
  DateTime createdAt;
  DateTime updatedAt;
  List<GalleryModel> galleries;

  ProductModel({
    this.id,
    this.category,
    this.createdAt,
    this.description,
    this.galleries,
    this.name,
    this.price,
    this.tags,
    this.updatedAt
  });

  ProductModel.fromJSON(Map<String,dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    tags = json['tags'];
    category = CategoryModel.fromJSON(json['category']);
    galleries = json['galleries'].map((gal) => GalleryModel.fromJSON(gal)).toList();
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);

  }
  Map<String,Object> toJson() {
    return {
      'id' : id,
      'name' : name,
      'price' : price,
      'description' : description,
      'tags' : tags ,
      'category' : category.toJson(),
      'galleries' : galleries.map((e) => e.toJson()).toList()
    };
  }


}