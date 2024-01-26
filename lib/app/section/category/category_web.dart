import 'package:flutter/material.dart';
import 'package:furniture_website/app/utils/category_utils.dart';
import 'package:furniture_website/core/color/colors.dart';
import 'package:sizer/sizer.dart';

class CategoryWeb extends StatefulWidget {
  const CategoryWeb({super.key});

  @override
  State<CategoryWeb> createState() => _CategoryWebState();
}

class _CategoryWebState extends State<CategoryWeb> {
  final PageController _pageController = PageController();
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: screenWidth > 2000 ? 80.h : 60.h,
            child: NavigationRail(
              extended: true,
              minWidth: screenWidth > 2000 ? 80 : 70,
              groupAlignment: -1,
              backgroundColor: Colors.transparent,
              unselectedLabelTextStyle: const TextStyle(color: Colors.black),
              selectedLabelTextStyle: const TextStyle(color: primaryColor1),
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                  _pageController.animateToPage(index,
                      duration: const Duration(microseconds: 500),
                      curve: Curves.easeInOut);
                });
              },
              labelType: NavigationRailLabelType.none,
              destinations: [
                ..._tabs.asMap().entries.map((e) => NavigationRailDestination(
                    icon: const SizedBox(), label: Text(e.value)))
              ],
            ),
          ),
          Expanded(
              child: SizedBox(
            height: screenWidth > 2000 ? 80.h : 60.h,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              controller: _pageController,
              children: [
                page1(),
              ],
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ))
        ],
      ),
    );
  }

  page1() {
    return Column(
      children: [
        Expanded(
          child: GridView.builder(
              itemCount: categoryUtils.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, crossAxisSpacing: 40, mainAxisSpacing: 40),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 30,
                                color: categoryUtils[index].color,
                              ),
                            ),
                          ),
                          Image.asset(categoryUtils[index].img),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      categoryUtils[index].text,
                      style: const TextStyle(color: textColor2),
                    )
                  ],
                );
              }),
        )
      ],
    );
  }
}
