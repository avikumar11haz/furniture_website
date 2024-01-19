import 'package:flutter/material.dart';
import 'package:furniture_website/app/changes/strings.dart';
import 'package:furniture_website/core/color/colors.dart';
import 'package:sizer/sizer.dart';

class NavbarWeb extends StatefulWidget {
  const NavbarWeb({super.key});

  @override
  State<NavbarWeb> createState() => _NavbarWebState();
}

class _NavbarWebState extends State<NavbarWeb> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: screenWidth > 2000 ? 20.w: 10.w, vertical: 10),
      color: primaryColor2,
      child: Row(
        children: [
          Text(logoname, style: TextStyle(
            color: Colors.black, fontSize: screenWidth < 2000 ? 20: 30, fontWeight: FontWeight.w800
          ),),

        ],
      ),
    );
  }
}
