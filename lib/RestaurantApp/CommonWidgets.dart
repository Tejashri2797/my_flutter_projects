import 'package:flutter/material.dart';

Widget CommonContainer({

  IconData icon=Icons.ice_skating,
  String label = '',
  bool isSelected = false,
})=>
    Column(
      children: [
        CircleAvatar(
        radius: 50,
        backgroundColor: isSelected?Colors.yellow:Colors.black12,
        foregroundColor: Colors.cyanAccent,
        child: Icon(icon,size:50,color: Colors.black,),
              ),
        Text(label,style: TextStyle(fontSize: 20),),


      ],
    );
   IconData icon =Icons.ice_skating;
  List<Map> values=[

{
  'img':'https://th.bing.com/th/id/OIP.MfhIfzrC6x6T1-szQkjtCgHaEo?w=308&h=192&c=7&r=0&o=5&dpr=1.3&pid=1.7',
  'title':'Pizza Government Kitchen',
  'subtitle':'Pizza anf fast food\n Rating: ***/5\nPrice:200only',
   icon:Icon(Icons.favorite),


},
    {
      'img':'https://th.bing.com/th/id/OIP.3VoBZT5XoCPPH9R40-hpDwHaFP?pid=ImgDet&rs=1',
      'title':'Pizza pro',
      'subtitle':'Pizza pocket Street\n food maharashtrian\n Rating: ***/5\nPrice:200only',
      icon:Icon(Icons.favorite),



    },
    {
      'img':'https://th.bing.com/th/id/OIP.f4QkFenZ2HrExYL6dG4QSgHaK2?pid=ImgDet&rs=1',
      'title':'Delight Pizza and pocket',
      'subtitle':'fast food, Beverages pizza \n Rating: ***/5\n Price:200only',
      icon:Icon(Icons.favorite),

    },
    {
      'img':'https://th.bing.com/th/id/OIP.MfhIfzrC6x6T1-szQkjtCgHaEo?w=308&h=192&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'title':'Kutes kitchen',
      'subtitle':'Pizza anf fast food\n Rating: **/5\nPrice:200only',
      icon:Icon(Icons.favorite),
    },
    {
      'img':'https://th.bing.com/th/id/OIP.MfhIfzrC6x6T1-szQkjtCgHaEo?w=308&h=192&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'title':'Pizza Government Kitchen',
      'subtitle':'Pizza anf fast food\n Rating: ***/5\nPrice:200only',
      icon:Icon(Icons.favorite),


    },
    {
      'img':'https://th.bing.com/th/id/OIP._QSGAZEOh9CcZwtpbtFToAHaFj?w=227&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'title':'Pizza pro',
      'subtitle':'Pizza pocket Street\n food maharashtrian\n Rating: ***/5\nPrice:200only',
      icon:Icon(Icons.favorite),



    },
    {
      'img':'https://th.bing.com/th/id/OIP.MfhIfzrC6x6T1-szQkjtCgHaEo?w=308&h=192&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'title':'Delight Pizza and pocket',
      'subtitle':'fast food, Beverages pizza \n Rating: ***/5\n Price:200only',
      icon:Icon(Icons.favorite),

    },
    {
      'img':'https://th.bing.com/th/id/OIP.MfhIfzrC6x6T1-szQkjtCgHaEo?w=308&h=192&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'title':'Kutes kitchen',
      'subtitle':'Pizza anf fast food\n Rating: **/5\nPrice:200only',
      icon:Icon(Icons.favorite),
    },
];
