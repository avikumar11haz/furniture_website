import 'package:flutter/material.dart';

class SlideUtils {
  final String img, titel1, titel2, titel3, titel4, titel5;
  final Color color;

  SlideUtils(
      {required this.img,
        required this.titel1,
        required this.titel2,
        required this.titel3,
        required this.titel4,
        required this.titel5,
        required this.color});
}

List<SlideUtils> slideUtils = [
  SlideUtils(
      img: 'assets/images/home_img.png',
      titel1: 'New Collecton',
      titel2: 'Comfortable modern chair',
      titel3: 'SALE',
      titel4: 'Upto 50% Off',
      titel5: 'Use Code - GANPATHI 50',
      color: Color(0xFFFFA59A)),
  SlideUtils(
      img: 'assets/images/home_img2.png',
      titel1: 'Trending',
      titel2: 'Slipper chair',
      titel3: 'SALE',
      titel4: 'Upto 20% Off',
      titel5: 'May the style be with you!',
      color: Color(0xFFDCD4B6)),
];
