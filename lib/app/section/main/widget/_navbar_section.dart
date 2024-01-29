import 'package:flutter/material.dart';
import 'package:furniture_website/app/changes/strings.dart';
import 'package:furniture_website/app/utils/navbar_utils.dart';
import 'package:furniture_website/app/widgets/navbar_actions_button.dart';
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
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth > 2000 ? 20.w : 10.w, vertical: 10),
      color: primaryColor2,
      child: Row(
        children: [
          Text(
            logoname,
            style: TextStyle(
                color: Colors.black,
                fontSize: screenWidth < 2000 ? 20 : 30,
                fontWeight: FontWeight.w800),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          ...NavBarUtils.names.asMap().entries.map(
                (e) => NavBarActionButton(
                    label: e.value, index: e.key, color: textColor2),
              ),
          const Expanded(child: SizedBox()),
          SizedBox(
            height: 3.h,
            width: 3.w,
            child: Image.asset(
              'assets/icons/search.png',
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 0.5.w,
          ),
          SizedBox(
            height: 3.h,
            width: 3.w,
            child: Image.asset(
              'assets/icons/cart.png',
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 0.5.w,
          ),
          SizedBox(
            height: 3.h,
            width: 3.w,
            child: Image.asset(
              'assets/icons/user.png',
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
