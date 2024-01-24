import 'package:flutter/material.dart';
import 'package:furniture_website/app/section/main/widget/_body.dart';
import 'package:furniture_website/app/section/main/widget/_navbar_section.dart';
import 'package:furniture_website/app/widgets/arrow_on_top.dart';
import 'package:furniture_website/core/color/colors.dart';
import 'package:furniture_website/core/providers/scroll_provider.dart';
import 'package:furniture_website/core/res/responsive.dart';

class MainPage extends StatefulWidget {
  ScrollProvider scrollProvider;
  MainPage({super.key, required this.scrollProvider});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isShow = false;
  late VoidCallback myListener;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    myListener = () {
      final positions =
          widget.scrollProvider.itemPositionsListener.itemPositions.value;
      final firstVisible = positions.first.index;
      final lastVisible = positions.last.index;

      setState(() {
        isShow = firstVisible > 0 && lastVisible < 90;
      });
    };

    //Add myListener as a listener
    widget.scrollProvider.itemPositionsListener.itemPositions
        .addListener(myListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor2,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(160),
          child: Responsive(
            web: NavbarWeb(),
          )),
      body: Stack(
        children: [const Body(), if (isShow) const ArrowOnTop()],
      ),
    );
  }

  @override
  void dispose() {
    // Remove myListener when the widget is disposed.
    widget.scrollProvider.itemPositionsListener.itemPositions
        .removeListener(myListener);
    super.dispose();
  }
}
