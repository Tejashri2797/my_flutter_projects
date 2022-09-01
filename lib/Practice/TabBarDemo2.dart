import 'package:flutter/material.dart';
import 'package:my_flutter_projects/InstaAllScreens/HomePage.dart';

import '../InstaAllScreens/Activity.dart';
import '../InstaAllScreens/Profile.dart';
import '../InstaAllScreens/Search.dart';

class TabBarDemo2 extends StatefulWidget {
  const TabBarDemo2({Key? key}) : super(key: key);

  @override
  State<TabBarDemo2> createState() => _TabBarDemoState2();
}

int currentIndex = 0;

class _TabBarDemoState2 extends State<TabBarDemo2> with TickerProviderStateMixin {
  TabController? tabController;

  List<Widget> pages = [
    HomePage(),
    Search(),
    Activity(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      body: Column(
         children: [
          TabBar(controller: tabController, tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              child: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(Icons.search, color: Colors.black),
              child: Text(
                'Search',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(Icons.favorite_border, color: Colors.black),
              child: Text(
                'Activity',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(Icons.person, color: Colors.black),
              child: Text(
                'Profile',
                style: TextStyle(color: Colors.black),
              ),
            )
          ]),
          Expanded(
              child: TabBarView(
                controller: tabController,
            children: [
              HomePage(),
              Search(),
              Activity(),
              Profile(),
            ],
          ))
        ],
      ),
    );
  }
}
