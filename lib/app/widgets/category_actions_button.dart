import 'package:flutter/material.dart';
import 'package:furniture_website/core/color/colors.dart';
import 'package:furniture_website/core/providers/scroll_provider.dart';

import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class CategoryActionButton extends StatefulWidget {
  final String label;
  final int index;
  final PageController pageController;
  //final Color color;
  const CategoryActionButton(
      {Key? key,
      required this.label,
      required this.index,
      required this.pageController
      //  required this.color,
      })
      : super(key: key);

  @override
  State<CategoryActionButton> createState() => _CategoryActionButtonState();
}

class _CategoryActionButtonState extends State<CategoryActionButton> {
  bool isHover = false;
  List<bool> isShow = List.generate(7, (index) => false);
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return MouseRegion(
      onEnter: (_) {
        // On hover, set background to transparent
        setState(() {
          isHover = true;
        });
      },
      onExit: (_) {
        // On exit, set background back to original
        setState(() {
          isHover = false;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        child: TextButton(
          onPressed: () {
            setState(() {
              isShow = isShow.map((bool value) => value = false).toList();
              isShow[widget.index] = true;
            });
            widget.pageController.animateToPage(
              widget.index,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
          child: Text(widget.label,
              style: TextStyle(
                  color: isShow[widget.index] ? primaryColor1 : Colors.black,
                  fontFamily: 'josefinsans',
                  fontSize: screenWidth < 1200 ? 16 : 18)),
        ),
      ),
    );
  }
}
