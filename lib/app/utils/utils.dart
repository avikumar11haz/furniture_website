import 'package:flutter/material.dart';
import 'package:furniture_website/app/section/category/category.dart';
import 'package:furniture_website/app/section/durian/durian.dart';
import 'package:furniture_website/app/section/footer/footer_web.dart';
import 'package:furniture_website/app/section/home/home.dart';
import 'package:furniture_website/app/section/sale/sale.dart';
import 'package:furniture_website/app/section/sign/sign_web.dart';
import 'package:furniture_website/core/providers/scroll_provider.dart';

class BodyUtils {
  static List<Widget> views(ScrollProvider scrollProvider) {
    return [
      Home(
          // scrollProvider: scrollProvider,
          ),
       Sale(),
      Category(),
      SignWeb(),
      Durian(),
      FooterWeb()
    ];
  }
}
