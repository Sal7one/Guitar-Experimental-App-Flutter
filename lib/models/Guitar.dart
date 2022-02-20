import 'package:flutter/material.dart';

class Guitar {
  final String name;
  final double price;
  final String desc;
  final Color color;
  final String brand;
  final String imgPath;

  Guitar({
    required this.name,
    required this.price,
    required this.desc,
    required this.color,
    required this.brand,
    required this.imgPath,
  });

  static List<Guitar> list = [
    Guitar(
      name: "Blues guitar ",
      desc: "Bluess",
      price: 184,
      color: Colors.black,
      brand: "Fender",
      imgPath: "2.png",
    ),
    Guitar(
      name: "Rock Guitar",
      desc: "Rockkkkkk",
      price: 123,
      color: Colors.red,
      brand: "Fender",
      imgPath: "1.png",
    ),
    Guitar(
      name: "Soul Guitar",
      desc: "soulllll",
      price: 135,
      color: Colors.purple,
      brand: "Fender",
      imgPath: "3.png",
    )
  ];
}
