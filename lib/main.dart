import 'package:flutter/material.dart';
import 'package:my_flutter_projects/Practice/HomeWork1.dart';
import 'package:my_flutter_projects/Practice/StatefullDemo.dart';
import 'Practice/ButtonPractice.dart';
import 'Practice/HomeWork2.dart';
import 'InstaAllScreens/DashBoard.dart';
import 'Registration/RegistrationForm.dart';
import 'RestaurantApp/LoginPage.dart';
import 'RestaurantApp/RestaurantUI.dart';
import 'InstaAllScreens/InstagramUI.dart';
import 'Practice/TabBarDemo.dart';
import 'Practice/TabBarDemo2.dart';
import 'Practice/WebviewDemo.dart';
import 'WhatsAppScreens/MainScreen.dart';
import 'Practice/first_app.dart';
import 'Practice/homeWork3.dart';

main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,



    /*
   ///NamedRoute In Restaurant UI
    initialRoute: '/',
    routes: {
      '/': (context) => LoginPage(),
      '/second': (context) => RestaurantUI(),
    },*/


    home: InstaDashBoard(),
     //home: MainScreen(),
    //home: Registration(),
    //home: TabBarDemo2(),
    // home: Registration(),
    // home: MainScreen(),
    //home:InstaDashBoard(),
    // home:Lecture2()
    // home: HomeWork1(),
    // home: HomeWork2(),
    //home: HomeWork3(),
    //home: StatefullDemo(),
    //home: FlipCart(),
  ));
}
