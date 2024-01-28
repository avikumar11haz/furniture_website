import 'package:flutter/material.dart';
import 'package:furniture_website/app/section/home/home_web.dart';
import 'package:furniture_website/core/providers/scroll_provider.dart';
import 'package:furniture_website/core/res/responsive.dart';

class Home extends StatelessWidget {
  const Home({super.key, required ScrollProvider scrollProvider});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      web: HomeWeb(),
    );
  }
}
