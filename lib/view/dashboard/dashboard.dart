import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shoppy11/constants/constant.dart';
import 'package:shoppy11/models/bottom_tabs.dart';


class Dashboard extends StatefulWidget {
  final int? currentIndex;

  const Dashboard({this.currentIndex, Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  //currentpage index
  int _currentTabIndex = 0;
  late PageController _pageController = PageController();
  List<BottomNavigationBarItem> navBarList = [];
  List<TabNavigationItem> itemsList = TabNavigationItem.items;
  bool internetError = false;

  @override
  void initState() {
    if (widget.currentIndex == null) {
      _currentTabIndex = 0;
    } else {
      _currentTabIndex = widget.currentIndex!;
    }
    _pageController = PageController(initialPage: _currentTabIndex);

 

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    navBarList = [
      BottomNavigationBarItem(
        backgroundColor: kWhite,
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Icon(
            Icons.home,
            size: 20.0,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        activeIcon: const Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Icon(
            Icons.home,
            size: 22.0,
            color: kMainColorDark,
          ),
        ),
        label: "HOME",
      ),
      
    
   
      const BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Icon(
                Icons.shopping_cart_checkout,
              ) 
          ),
          activeIcon: Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Icon(
                Icons.shopping_cart_checkout,
              ) 
          ),
          label: "Check Out"),
    ];

    assert(itemsList.length == navBarList.length);
    final bottomNavBar = BottomNavigationBar(
      items: navBarList,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
          _pageController.jumpToPage(index);
        });
      },
      backgroundColor: kWhite,
      selectedItemColor: kMainColorDark,
      unselectedItemColor: Theme.of(context).iconTheme.color,
      selectedLabelStyle: Theme.of(context).textTheme.labelSmall,
      unselectedLabelStyle: Theme.of(context).textTheme.labelSmall,
    );
    return Scaffold(
      // drawer: const Drawer(),
      //key: scaffoldDrawer,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: Container(
        height: Platform.isIOS ? size.height * 0.11 : 65,
        decoration: const BoxDecoration(color: kWhite, boxShadow: [
          // BoxShadow(
          //     offset: const Offset(0, -7),
          //     color: PrefUtils.getUserThemePreference() == true
          //         ? kDarkGrey.withOpacity(0.5)
          //         : kShadowColor.withOpacity(0.11),
          //     blurRadius: 33)
        ]),
        child: bottomNavBar,
      ),
    );
  }
}
