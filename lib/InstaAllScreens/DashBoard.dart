import 'package:flutter/material.dart';

import 'Activity.dart';
import 'HomePage.dart';
import 'Media.dart';
import 'Profile.dart';
import 'Search.dart';

class InstaDashBoard extends StatefulWidget {
  const InstaDashBoard({Key? key}) : super(key: key);

  @override
  State<InstaDashBoard> createState() => _InstaDashBoardState();
}
List<Widget> pages=[
  HomePage(),
  Search(),
  MediaPage(),
  Activity(),
  Profile(),
];
class _InstaDashBoardState extends State<InstaDashBoard> {
  int currentPageIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: currentPageIndex,
        onTap: (val){
          setState(() {
            currentPageIndex=val;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: ''
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv_rounded),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: ''),
          BottomNavigationBarItem(icon: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage('ansh.jpg'),
          ),
              label: ''),
        ],
      ),
    );
  }
}
