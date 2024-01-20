import 'package:flutter/material.dart';
import 'package:furniture_website/app/changes/strings.dart';
import 'package:furniture_website/app/utils/sale_utils.dart';
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
        height: 65.h,
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
            Padding(
              padding: EdgeInsets.only(right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(saleDescription, style: TextStyle(fontSize: 25, color: textColor2),),
                  SizedBox(height: 1.h,),
                  Text(saleDescription2, style: TextStyle(fontSize: 70, color: textColor2, fontWeight: FontWeight.w900),),
                  SizedBox(height: 1.h,),
                  Text(saleDescription3, style: TextStyle(fontSize: 16, color: textColor2),),
                  SizedBox(height: 2.h,),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('EXPLORE',
                              style: TextStyle(
                                  fontSize: 20, color: textColor2)),
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
            Expanded(child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: List.generate(6, (index) {
                return Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15.h),
                          width: 20.w,
                          padding: EdgeInsets.only(left: 2.w, right: 2.w, bottom: 2.h),
                          decoration: BoxDecoration(
                            color: Color(0xFFD7D1D3),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(saleUtils[index].titel1, style: TextStyle(
                                    color: textColor2, fontSize: 16,
                                  ),),
                                  Expanded(child: SizedBox()),
                                  Icon(Icons.add, color: Colors.black,),
                                  SizedBox(width: 0.5.w,),
                                  ImageIcon(AssetImage("assets/icons/save.png")),
                                ],
                              ),
                              Text(saleUtils[index].price, style: TextStyle(
                                color: textColor2, fontSize: 16, fontWeight: FontWeight.bold,
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Image.asset(saleUtils[index].img, width: 20.w,),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ))
          ],
        ),
      ),
    );
  }
}
