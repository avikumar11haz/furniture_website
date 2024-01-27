import 'package:flutter/material.dart';
import 'package:furniture_website/app/section/sale/sale_web.dart';
import 'package:furniture_website/core/res/responsive.dart';

class Sale extends StatelessWidget {
  const Sale({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      web: SaleWeb(),
    );
  }
}
