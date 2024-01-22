import 'package:flutter/material.dart';
import 'package:furniture_website/app/changes/strings.dart';
import 'package:furniture_website/app/utils/durian_utils.dart';
import 'package:furniture_website/core/color/colors.dart';
import 'package:sizer/sizer.dart';

class DurianWeb extends StatefulWidget {
  const DurianWeb({super.key});

  @override
  State<DurianWeb> createState() => _DurianWebState();
}

class _DurianWebState extends State<DurianWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            durianDescription,
            style: TextStyle(
                color: textColor2, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              ...List.generate(
                  4,
                  (index) => Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              durianutils[index].img,
                              height: 100,
                              width: 100,
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              durianutils[index].titel,
                              style: TextStyle(
                                  color: textColor2,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              durianutils[index].description,
                              style: TextStyle(
                                color: textColor2,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      )))
            ],
          )
        ],
      ),
    );
  }
}
