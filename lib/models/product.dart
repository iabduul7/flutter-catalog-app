import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  const Product(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image,
      Key? key});

  static final get = [
    const Product(
        id: 001,
        name: 'Apple iPhone 13',
        desc: 'iPhone 13 Pro Max, 1TB, 8GB, Mate Black',
        price: 9999,
        color: '#33505a',
        image:
            'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-13-family-select-2021?wid=940&hei=1112&fmt=jpeg&qlt=80&.v=1629842667000'),
  ];
}
