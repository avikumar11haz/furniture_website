import 'package:avatar_glow/avatar_glow.dart';

import 'package:flutter/material.dart';
import 'package:furniture_website/core/animations/entrance_fader.dart';
import 'package:furniture_website/core/providers/scroll_provider.dart';
import 'package:furniture_website/core/res/responsive.dart';

import 'package:provider/provider.dart';

class ArrowOnTop extends StatefulWidget {
  const ArrowOnTop({Key? key}) : super(key: key);

  @override
  ArrowOnTopState createState() => ArrowOnTopState();
}

class ArrowOnTopState extends State<ArrowOnTop> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Positioned(
      bottom: 100,
      right: 20,
      child: EntranceFader(
        offset: const Offset(0, 20),
        child: GestureDetector(
          onTap: () => scrollProvider.jumpTo(0),
          child: AvatarGlow(
            glowColor: Colors.black,
            endRadius: Responsive.isDesktop(context) ? 80 : 40,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                  size: Responsive.isDesktop(context) ? 30 : 20,
                ),
                radius: Responsive.isDesktop(context) ? 40 : 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
