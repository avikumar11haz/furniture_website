import 'package:flutter/material.dart';
import 'package:furniture_website/app/section/sign/sign_web.dart';
import 'package:furniture_website/core/res/responsive.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(web: const SignWeb());
  }
}
