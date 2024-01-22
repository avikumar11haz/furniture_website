import 'package:flutter/material.dart';
import 'package:furniture_website/core/res/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(web: const FooterWeb());
  }
}
