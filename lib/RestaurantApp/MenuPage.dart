import 'package:flutter/material.dart';
import 'package:my_flutter_projects/RestaurantApp/ItemList.dart';


import 'CommonWidgets.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('Menu',style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notification_important,color: Colors.black,)
        ],
        bottom: PreferredSize(
          preferredSize: Size(0,50),
          child:Row(
            children: [
              TextButton(onPressed: (){}, child: Text('Starters')),
              TextButton(onPressed: (){}, child: Text('Drinks')),
              TextButton(onPressed: (){}, child: Text('Chiken')),
              TextButton(onPressed: (){}, child: Text('Dessert')),
              TextButton(onPressed: (){}, child: Text('Burgur')),
              TextButton(onPressed: (){}, child: Text('Pizza')),

            ],
          ),
        ),
      ),
      body:

          ListView.separated(
             itemCount: values.length,

              itemBuilder: (context,index) => ListTile(
                horizontalTitleGap: 10,

               leading:Container(
                 height: 200,
                 width: 100,
                 child: Image.network(values[index]['img'],fit: BoxFit.cover,),
                 padding: EdgeInsets.only(right: 20),

               ),

                title: Text(values[index]['title'],style: TextStyle(fontSize: 20),),
                subtitle: Text(values[index]['subtitle']),
                trailing: Icon(values[index]['icon']),
                contentPadding: EdgeInsets.only(top: 20,),
              onTap:() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder:(BuildContext context)=>ItemList(),));
              },
              ),

            separatorBuilder:(context,index)=>const Divider(
              height: 2,
              thickness: 2,
            ),
          ),
    );
  }
}
