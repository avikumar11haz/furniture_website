import 'package:flutter/material.dart';
import 'package:furniture_website/app/utils/utils.dart';
import 'package:furniture_website/core/providers/scroll_provider.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return ScrollablePositionedList.builder(
      itemCount: BodyUtils.views(scrollProvider).length,
      itemBuilder: (context, index) => BodyUtils.views(scrollProvider)[index],
      itemScrollController: scrollProvider.itemScrollController,
      scrollOffsetController: scrollProvider.scrollOffsetController,
      itemPositionsListener: scrollProvider.itemPositionsListener,
      scrollOffsetListener: scrollProvider.scrollOffsetListener,
    );
  }
}
