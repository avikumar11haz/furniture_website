import 'package:flutter/material.dart';
import 'package:furniture_website/app/changes/strings.dart';

class DurianUtils {
  final String img, titel, description;

  DurianUtils({
    required this.img,
    required this.titel,
    required this.description,
  });
}

List<DurianUtils> durianutils = [
  DurianUtils(
    img: 'assets/icons/handshake.png',
    titel: "India's Most Trusted Brand",
    description: companyServicesDescription2,
  ),
  DurianUtils(
    img: 'assets/icons/man.png',
    titel: "Free Installation and Assembly",
    description: companyServicesDescription2,
  ),
  DurianUtils(
    img: 'assets/icons/high-quality.png',
    titel: "5 year Warranty",
    description: companyServicesDescription2,
  ),
  DurianUtils(
    img: 'assets/icons/delivery.png',
    titel: "Free Delivery and Easy Returns",
    description: companyServicesDescription2,
  ),
];
