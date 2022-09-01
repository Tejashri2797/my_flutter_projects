import 'package:flutter/material.dart';

class HomeWork3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          children: [
            Row(
              children: [
                Container(
                height: 30.0,
                width: 200.0,
                child: Text('\$1200'),
                ),
                Icon(Icons.menu),
            ],

            ),
            Row(
              children: <Widget>[
                Container(
                  height:150,
                  width: 150,

                  margin: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40),
                                             bottomLeft: Radius.circular(40)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const[
                      Icon(Icons.search,
                      size: 50.0,
                      color: Colors.white,),
                      Text('LOAD MONEY',
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),
                ),
                Container(
                  height: 150.0,
                  width: 150.0,

                  decoration: const BoxDecoration(
                    borderRadius:BorderRadius.only(topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40.0)),
                    color: Colors.green
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.money,size:50 ,color: Colors.white,),
                      Text('MERCHANT MONEY',
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),

                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40.0)),
                    color: Colors.blue,
                  ),
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [

                      Icon(Icons.calendar_month_sharp,size: 40.0,color: Colors.white,),
                      Text('SEND MONEY',
                        style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white) ,)
                    ],
                  ),
                ),
                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration:const BoxDecoration(
                    color: Colors.purple    ,
                    borderRadius: BorderRadius.only(topRight:Radius.circular(40.0),
                        bottomLeft:Radius.circular(40.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [
                      Icon(Icons.photo,size: 40,color: Colors.white,),
                      Text('REQUEST MONEY',
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),
                )
              ],
            ),
             Row(
               children:<Widget> [
              Container(

                height: 150.0,
                width: 328.0,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  color: Colors.red,
                ),

              ),
            ],
          ),
            Center(
              child: Row(
                children: [
                  Container(
                    height: 150.0,
                    width: 328.0,
                    margin:EdgeInsets.only(top: 10.0,left: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.purple
                    ),


                    child: Column(
                      children: [
                        Row(

                         children: [
                           IconButton(onPressed: (){}, icon:Icon(Icons.search),padding: EdgeInsets.all(50),),
                           Text('John Doe',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0), ),
                           Text('30')
                         ],
                        )
                      ],

                    ),
                  )
                ],
              ),
            )
          ],
        ),

    );
  }
}
