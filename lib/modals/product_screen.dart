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
    title: "laptop Hand Bag",
    price: 1500,
    size: 2,
    description: "premium quality bag at resonable price",
    image: "assets/bag.png",
    color: Color.fromARGB(255, 247, 219, 126),
  ),
  Product(
    id: 2,
    title: "Ladies Hand Bag",
    price: 1150,
    size: 2,
    description: "helloText",
    image: "assets/black bag.png",
    color: Color.fromARGB(255, 145, 145, 144),
  ),
  Product(
    id: 3,
    title: "Ladies Hand Bag",
    price: 1150,
    size: 2,
    description: "helloText",
    image: "assets/black bag.png",
    color: Color.fromARGB(255, 145, 145, 144),
  ),
  Product(
    id: 4,
    title: "Bag Pack",
    price: 1500,
    size: 2,
    description: "best quality back pack for all",
    image: "assets/9.png",
    color: Color.fromARGB(255, 39, 235, 190),
  ),
  Product(
    id: 5,
    title: "Small hand bag",
    price: 123,
    size: 2,
    description: "helloText",
    image: "assets/8.png",
    color: Color.fromARGB(255, 154, 136, 2),
  ),
  Product(
    id: 6,
    title: "Back-Pack ",
    price: 1800,
    size: 2,
    description: "helloText",
    image: "assets/5.png",
    color: Color.fromARGB(255, 145, 145, 144),
  ),
];
