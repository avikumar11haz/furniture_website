import 'package:flutter/material.dart';
import 'package:furniture_website/core/color/colors.dart';
import 'package:sizer/sizer.dart';

class FooterWeb extends StatefulWidget {
  const FooterWeb({super.key});

  @override
  State<FooterWeb> createState() => _FooterWebState();
}

class _FooterWebState extends State<FooterWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
        color: secondaryColor1,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [rowHelpful(), rowContact()],
            ),
          )
        ],
      ),
    );
  }

  rowHelpful() {
    return Expanded(
        child: Column(
      children: [
        const Text(
          'Helpful Links',
          style: TextStyle(
              color: textColor2, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 4.h,
        ),
        const Text(
          'About us',
          style: TextStyle(
            color: textColor2,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        const Text(
          'Delivery and Returns Policy',
          style: TextStyle(
            color: textColor2,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        const Text(
          'Help & FAQ',
          style: TextStyle(
            color: textColor2,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        const Text(
          'Service for professionals',
          style: TextStyle(
            color: textColor2,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
      ],
    ));
  }

  rowContact() {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Contact Info",
          style: TextStyle(
              color: textColor2, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 4.h,
        ),
        const Text(
          '+213 23 56 295',
          style: TextStyle(
            color: textColor2,
            fontSize: 16,
          ),
        ),
        const Text(
          '+213 23 56 295',
          style: TextStyle(
            color: textColor2,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        const Text(
          'avikumarr355@gmail.com',
          style: TextStyle(
            color: textColor2,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(
          children: [
            Image.asset(
              'assets/icons/globe.png',
              height: 30,
              width: 30,
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/icons/youtube.png',
              height: 30,
              width: 30,
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/icons/instagram.png',
              height: 30,
              width: 30,
              color: Colors.black,
            ),
            SizedBox(
              height: 2.h,
            ),
          ],
        )
      ],
    ));
  }
}
