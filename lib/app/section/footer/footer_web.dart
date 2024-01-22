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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [rowHelpful(), rowContac()],
          )
        ],
      ),
    );
  }

  rowHelpful(){
    return Expanded(child: Column(
      children: [
        const Text('Helpful Links', style: TextStyle(
          color: textColor2, fontSize: 20, fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 4.h,),
        const Text('About us', style: TextStyle(
            color: textColor2, fontSize: 16,
        ),),
        SizedBox(height: 2.h,),
        const Text('Delivery and Returns Policy', style: TextStyle(
            color: textColor2, fontSize: 16,
        ),),
        SizedBox(height: 2.h,),
        const Text('Help & FAQ', style: TextStyle(
          color: textColor2, fontSize: 16,
        ),),
        SizedBox(height: 2.h,),
        const Text('Service for professionals', style: TextStyle(
          color: textColor2, fontSize: 16,
        ),),
        SizedBox(height: 2.h,),
      ],
    ));
  }
}
