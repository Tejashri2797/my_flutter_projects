import 'package:flutter/material.dart';
import 'dart:io';
import 'Calls.dart';
import 'HomePage.dart';
import 'Status.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

int currentIndex = 0;

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  TabController? tabController;
  void initState(){
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text(
          'WhatsApp',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      bottom: PreferredSize(
          preferredSize: Size(0, 40),
          child: TabBar(
        controller: tabController,
        tabs: [
          Tab(

            child: Text(
              'CHATS',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Tab(

            child: Text(
              'STATUS',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Tab(

            child: Text(
              'CALLS',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),),
      ),

      body:SafeArea(
          child: Expanded(
        child: TabBarView(
          controller: tabController,
          children: [
            ChatPage(),
            Status(),
            Calls(),
          ],
        ),
      ),
    )
    );
  }
}
