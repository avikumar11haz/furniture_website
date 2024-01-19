import 'package:flutter/material.dart';
import 'package:furniture_website/app/section/main/widget/_navbar_section.dart';
import 'package:furniture_website/core/color/colors.dart';
import 'package:furniture_website/core/res/responsive.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor2,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
          child: Responsive(web: NavbarWeb(),)),
    );
  }
}
