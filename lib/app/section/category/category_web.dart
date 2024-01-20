import 'package:flutter/material.dart';
import 'package:furniture_website/core/color/colors.dart';
import 'package:sizer/sizer.dart';

class CategoryWeb extends StatefulWidget {
  const CategoryWeb({super.key});

  @override
  State<CategoryWeb> createState() => _CategoryWebState();
}

class _CategoryWebState extends State<CategoryWeb> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;
  final List<String> _tabs = [
    'New in',
    'Collection',
    'Rest',
    'Decoration',
    'Outdoor',
    'Magazine',
    'Outlet',
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        left: screenWidth > 2000 ? 20.w : 10.w,
        right: screenWidth > 2000 ? 20.w : 10.w,
        top: 5.h,
        bottom: 5.h,
      ),
      child: Row(
        children: [
          SizedBox(height: 80.h,
          child: NavigationRail(
            extended: true,
            minWidth: screenWidth > 2000 ? 80 : 70,
            groupAlignment: -1,
            backgroundColor: Colors.transparent,
            unselectedLabelTextStyle: TextStyle(color: Colors.black),
            selectedLabelTextStyle: TextStyle(color: primaryColor1),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index){
              setState(() {
                _selectedIndex = index;
                _pageController.animateToPage(index, duration: const Duration(microseconds: 500), curve: Curves.easeInOut);
              });
            },
            labelType: NavigationRailLabelType.none,
            destinations: [
              ..._tabs.asMap().entries.map((e) => NavigationRailDestination(icon: SizedBox(), label: Text(e.value)))
            ],
          ),),

        ],
      ),
    );
  }
}
