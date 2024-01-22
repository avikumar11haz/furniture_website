import 'package:flutter/material.dart';
import 'package:furniture_website/app/section/durian/durian_web.dart';
import 'package:furniture_website/core/res/responsive.dart';

class Durian extends StatelessWidget {
  const Durian({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(web: const DurianWeb());
  }
}
