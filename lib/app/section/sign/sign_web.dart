import 'package:flutter/material.dart';
import 'package:furniture_website/app/changes/strings.dart';
import 'package:furniture_website/core/color/colors.dart';
import 'package:sizer/sizer.dart';

class SignWeb extends StatefulWidget {
  const SignWeb({super.key});

  @override
  State<SignWeb> createState() => _SignWebState();
}

class _SignWebState extends State<SignWeb> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: screenWidth > 2000 ? 20.w : 5.w),
      child: Container(
        padding: EdgeInsets.only(left: 10.w, top: 5.h, bottom: 5.h, right: 5.w),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: secondaryColor1
        ),
        child: Row(
          children: [
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(signDescription, style: const TextStyle(
                  fontSize: 25, color: textColor2,
                ),),
                SizedBox(height: 1.h,),
                Text(signDescription2, style: const TextStyle(
                  fontSize: 70, color: textColor2, fontWeight: FontWeight.w900
                ),),
                SizedBox(height: 1.h,),
                Text(signDescription3, style: const TextStyle(
                  fontSize: 25, color: textColor2,
                ),),
                SizedBox(height: 2.h,),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1DEBD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                      ),
                      disabledBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 1.h,),

              ],
            ))
          ],
        ),
      ),
    );
  }
}
