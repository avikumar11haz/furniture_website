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
    color: Color(0xFFBAB1F2),
  ),
  CategoryUtils(
    img: 'assets/images/sale_img6.png',
    text: 'Sofa Sets',
    color: Color(0xFFDFD8AE),
  ),
  CategoryUtils(
    img: 'assets/images/sale_img8.png',
    text: 'Beds',
    color: Color(0xFFD3C2AE),
  ),
  CategoryUtils(
    img: 'assets/images/category_img4.png',
    text: 'Dinning Table',
    color: Color(0xFFCA9C9C),
  ),
  CategoryUtils(
    img: 'assets/images/category_img5.png',
    text: 'Coffee Table',
    color: Color(0xFFC6CBA2),
  ),
  CategoryUtils(
    img: 'assets/images/category_img6.png',
    text: 'Lamps & Light',
    color: Color(0xFFC8B2C9),
  ),
  CategoryUtils(
    img: 'assets/images/category_img7.png',
    text: 'Home Decor',
    color: Color(0xFFB3C8CB),
  ),
  CategoryUtils(
    img: 'assets/images/category_img8.png',
    text: 'Plants',
    color: Color(0xFF91B297),
  ),
];