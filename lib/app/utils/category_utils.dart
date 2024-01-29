import 'package:flutter/material.dart';

class CategoryUtils {
  final String img, text;
  final Color color;

  CategoryUtils({
    required this.img,
    required this.text,
    required this.color,
  });
}

List<CategoryUtils> categoryUtils = [
  CategoryUtils(
    img: 'assets/images/category_img1.png',
    text: 'Deal Zone',
    color: const Color(0xFFBAB1F2),
  ),
  CategoryUtils(
    img: 'assets/images/sale_img6.png',
    text: 'Sofa Sets',
    color: const Color(0xFFDFD8AE),
  ),
  CategoryUtils(
    img: 'assets/images/sale_img8.png',
    text: 'Beds',
    color: const Color(0xFFD3C2AE),
  ),
  CategoryUtils(
    img: 'assets/images/category_img4.png',
    text: 'Dinning Table',
    color: const Color(0xFFCA9C9C),
  ),
  CategoryUtils(
    img: 'assets/images/category_img5.png',
    text: 'Coffee Table',
    color: const Color(0xFFC6CBA2),
  ),
  CategoryUtils(
    img: 'assets/images/category_img6.png',
    text: 'Lamps & Light',
    color: const Color(0xFFC8B2C9),
  ),
  CategoryUtils(
    img: 'assets/images/category_img7.png',
    text: 'Home Decor',
    color: const Color(0xFFB3C8CB),
  ),
  CategoryUtils(
    img: 'assets/images/category_img8.png',
    text: 'Plants',
    color: const Color(0xFF91B297),
  ),
];
