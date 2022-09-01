import 'package:flutter/material.dart';
import 'package:my_flutter_projects/InstaAllScreens/HomePage.dart';

import '../InstaAllScreens/Activity.dart';
import '../InstaAllScreens/Profile.dart';
import '../InstaAllScreens/Search.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}
int currentIndex=0;
class _TabBarDemoState extends State<TabBarDemo> {

  List<Widget>pages=[
    HomePage(),
    Search(),
    Activity(),
    Profile(),
  ];
  @override

  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child:Scaffold(
          body: Column(
            children: [
              TabBar(tabs: [
                Tab(icon: Icon(Icons.home,color: Colors.black,),
                child: Text('Home',style: TextStyle(color: Colors.black),),
                ),
                Tab(icon: Icon(Icons.search,color: Colors.black),
                  child: Text('Search',style: TextStyle(color: Colors.black),),
                ),
                Tab(icon: Icon(Icons.favorite_border,color: Colors.black),
                  child: Text('Activity',style: TextStyle(color: Colors.black),),
                ),
                Tab(icon: Icon(Icons.person,color: Colors.black),
                  child: Text('Profile',style: TextStyle(color: Colors.black),),
                )
              ]),
              Expanded(child: TabBarView
                (children:[
                 HomePage(),
                 Search(),
                Activity(),
                Profile(),],

              ))
            ],

          ),
        ) );
  }
}
