import 'package:flutter/material.dart';
import 'package:furniture_website/core/animations/entrance_fader.dart';
import 'package:furniture_website/core/color/colors.dart';
import 'package:furniture_website/core/providers/scroll_provider.dart';

import 'package:provider/provider.dart';

class NavBarActionButton extends StatefulWidget {
  final String label;
  final int index;
  final Color color;
  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index,
    required this.color,
  }) : super(key: key);

  @override
  State<NavBarActionButton> createState() => _NavBarActionButtonState();
}

class _NavBarActionButtonState extends State<NavBarActionButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 250),
      child: InkWell(
        onHover: (value) {
          setState(() => isHover = value);
        },
        onTap: () {
          //   scrollProvider.jumpTo(widget.index);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            widget.label,
            style: TextStyle(
                color: isHover ? primaryColor1 : widget.color,
                fontFamily: 'josefinsans',
                fontSize: screenWidth < 1200 ? 14 : 18),
          ),
        ),
      ),
    );
  }
}
