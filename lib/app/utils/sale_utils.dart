import 'package:flutter/material.dart';

class SaleUtils {
  final String img, titel1, price;

  SaleUtils({
    required this.img,
    required this.titel1,
    required this.price,
  });
}

List<SaleUtils> saleUtils = [
  SaleUtils(
    img: 'assets/images/sale_img2.png',
    titel1: 'Luxury chair back',
    price: '22 00 DA',
  ),
  SaleUtils(
    img: 'assets/images/sale_img3.png',
    titel1: 'Parsons chair',
    price: '22 000 DA',
  ),
  SaleUtils(
    img: 'assets/images/sale_img4.png',
    titel1: 'Parsons chair',
    price: '22 000 DA',
  ),
  SaleUtils(
    img: 'assets/images/sale_img7.png',
    titel1: 'Parsons chair',
    price: '22 000 DA',
  ),
  SaleUtils(
    img: 'assets/images/sale_img8.png',
    titel1: 'Parsons chair',
    price: '22 000 DA',
  ),
  SaleUtils(
    img: 'assets/images/sale_img6.png',
    titel1: 'Parsons chair',
    price: '22 000 DA',
  ),
];
