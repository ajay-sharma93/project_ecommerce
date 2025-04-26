import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Doll",
    price: 123,
    size: 2,
    description: "helloText",
    image: "assets/_MGM4801.JPG",
    color: Color(0xFF3D82AE),
  ),
];
