import 'package:flutter/material.dart';

class HomeWork1 extends StatelessWidget {


  Widget commonContainer({
    String label = '',
    IconData icon = Icons.access_alarms_sharp,
  }) =>
      Column(
        children: [

          Container(
            height: 85,
            width: 85,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
              ,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1.0,
                  blurRadius: 5,
                  offset: Offset(5, 9),
                ),
              ],
            ),
            child: Icon(
              icon,
              color: Colors.deepPurpleAccent,
              size: 40,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        margin: EdgeInsets.all(40),
        height: 600.0,
        width:  400.0,
        decoration: BoxDecoration(
          color: Colors.white10,
          border: Border.all(
            color: Colors.black26,
            width: 3
          ),
          borderRadius:
        BorderRadius.all(Radius.circular(40),
        ),

        ),
        padding:EdgeInsets.only(left: 20.0,bottom: 50.0) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back),
            Text(' Add  Itenerary',
              style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),
            ),
            Text('Chooes type of activity that will you\n add in your camp schedule '),

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                commonContainer(label: 'camp',icon: Icons.home),
                commonContainer(label:'Fishing',icon: Icons.man_rounded),
                commonContainer(label: 'Packing',icon: Icons.shopping_bag_outlined)
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                commonContainer(label: 'forest',icon: Icons.forest_outlined),
                commonContainer(label:'Transport',icon: Icons.emoji_transportation),
                commonContainer(label: 'Rafting',icon: Icons.directions_boat)
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                commonContainer(label: 'Radio',icon: Icons.radio),
                commonContainer(label:'tea',icon: Icons.cloud_upload),
                commonContainer(label: 'Telescope',icon: Icons.camera_alt)
              ],

            ),

          ],


        ),
      ),
    );
  }
}
