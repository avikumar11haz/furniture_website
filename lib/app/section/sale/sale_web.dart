import 'package:flutter/material.dart';
import 'package:furniture_website/app/changes/strings.dart';
import 'package:furniture_website/core/color/colors.dart';
import 'package:sizer/sizer.dart';

class SaleWeb extends StatefulWidget {
  const SaleWeb({super.key});

  @override
  State<SaleWeb> createState() => _SaleWebState();
}

class _SaleWebState extends State<SaleWeb> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: screenWidth > 2000 ? 20.w : 5.w),
      child: Container(
        height: 50.h,
        padding: EdgeInsets.only(left: 5.w, top: 5.h, bottom: 5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          color: secondaryColor1
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(saleDescription, style: TextStyle(fontSize: 25, color: textColor2),),
                SizedBox(height: 1.h,),
                Text(saleDescription2, style: TextStyle(fontSize: 70, color: textColor2, fontWeight: FontWeight.w900),),
                SizedBox(height: 1.h,),
                Text(saleDescription3, style: TextStyle(fontSize: 16, color: textColor2),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
