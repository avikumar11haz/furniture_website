import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:furniture_website/app/utils/slide_utils.dart';
import 'package:furniture_website/core/color/colors.dart';
import 'package:sizer/sizer.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({super.key});

  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 5.h),
      height: 100.h,
      width: screenWidth,
      child: CarouselSlider.builder(
        itemCount: 2,
        itemBuilder: (context, itemIndex, pageViewIndex) => Row(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: screenWidth > 2000 ? 20.w : 10.w,
                right: 5.w,
              ),
              width: 50.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    slideUtils[itemIndex].titel1,
                    style: const TextStyle(
                      fontSize: 30,
                      color: textColor2,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    slideUtils[itemIndex].titel2,
                    style: const TextStyle(
                        fontSize: 60,
                        color: textColor2,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text.rich(
                    TextSpan(
                      text: slideUtils[itemIndex].titel3,
                      style: const TextStyle(
                          fontSize: 40,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: ' ${slideUtils[itemIndex].titel4}',
                          style:
                              const TextStyle(fontSize: 20, color: textColor2),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(slideUtils[itemIndex].titel5,
                      style: const TextStyle(fontSize: 16, color: textColor2)),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: primaryColor1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('SHOW NOW',
                              style:
                                  TextStyle(fontSize: 20, color: textColor2)),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 50.w,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 70.h,
                    decoration: BoxDecoration(
                        color: slideUtils[itemIndex].color,
                        shape: BoxShape.circle),
                  ),
                  Image.asset(
                    slideUtils[itemIndex].img,
                    height: 80.h,
                  ),
                ],
              ),
            )
          ],
        ),
        options: CarouselOptions(
          height: 100.h,
          aspectRatio: 2.0,
          enableInfiniteScroll: true,
          animateToClosest: false,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          //enlargerFactor: 0.1,
          //enlargerCenterPage: true,
          autoPlayInterval: const Duration(seconds: 8),
          //autoPlayCurve: Curves.linear,
          autoPlayAnimationDuration: const Duration(seconds: 4),
          viewportFraction: 1,
          scrollDirection: Axis.horizontal,
          autoPlay: true,
        ),
      ),
    );
  }
}
