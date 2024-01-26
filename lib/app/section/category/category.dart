import 'package:flutter/material.dart';
import 'package:furniture_website/app/section/category/category_web.dart';
import 'package:furniture_website/core/res/responsive.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(web: CategoryWeb());
  }
}
