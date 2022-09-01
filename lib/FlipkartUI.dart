import 'package:flutter/material.dart';
import 'package:my_flutter_projects/Registration/space.dart';

import '../Registration/Color.dart';

class FlipCart extends StatefulWidget {
  const FlipCart({Key? key}) : super(key: key);

  @override
  State<FlipCart> createState() => _FlipCartState();
}

class _FlipCartState extends State<FlipCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        leading: IconButton(
            onPressed: (){},
            icon:Icon(Icons.menu)
        ),
        title:Text('FlipCart\n Explore Plus'),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_important)),
          IconButton(onPressed: (){}, icon: Icon(Icons.wordpress)),
        ],
        bottom:PreferredSize(
          preferredSize: Size(10,70),

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for products brands and more',
                labelStyle: TextStyle(color: white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: white),
                ),
                filled: true,
                fillColor:Colors.white,
                prefixIcon: IconButton(onPressed: (){},icon: Icon(Icons.search),
                ),
                suffixIcon:
                IconButton(onPressed: (){},icon: Icon(Icons.mic),
    ),
        )
      ),
            ),

      ),
      ),
      body: Column(
        children: [

          Expanded(
            child:SingleChildScrollView(
             scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.blue,),
                    Text('All Categories',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                ),
                horizontalSpace(20),
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.ice_skating_outlined),color: Colors.red,),
                    Text('Essentials',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                ),
                horizontalSpace(20),
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.local_offer_sharp),color: Colors.purple,),
                    Text('Offer Zone',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                ),
                horizontalSpace(20),
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.local_grocery_store_rounded),color: Colors.yellow,),
                    Text('Grocery',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                ),
                horizontalSpace(20),
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.mobile_friendly),color: Colors.brown,),
                    Text('Mobiles',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                ),
                horizontalSpace(20),
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.electric_bike,color: Colors.green,)),
                    Text('Electrics',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            ),
          ),
          ),
          verticalSpace(5),
          Row(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Image.asset('img_1.png',fit:BoxFit.cover,),
              )
            ],
          ),
          verticalSpace(15),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30,top: 10),
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.orangeAccent,
                child: Row(
                  children: [
                    Text('EXTRA \$30 OFF\n On Fashion',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.indigo),
                    ),
                    horizontalSpace(70),
                    MaterialButton(
                      onPressed: (){},
                    height: 40,
                    minWidth: 100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                      child: Text('Shop Now >',style: TextStyle(color: Colors.white,fontSize: 20),),
                      color: Colors.indigo,
                    ),
                  ],
                ),

              )
            ],
          ),
          Row(
            children: [
              Row(

                children: [
                  Text('Discount For You',style: TextStyle(fontSize: 17
                      ,fontWeight: FontWeight.bold),),

                  CircleAvatar(
                    radius: 20,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded))
                  ),

                ],
              ),
            ],
          ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10,bottom: 10,right: 10),
                        height: 180,
                        width: MediaQuery.of(context).size.width/2,
                        color: Colors.blue,
                        child: Image.asset('img_1.png',fit:BoxFit.cover,),
                      ),
                    ],
                  ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                            height: 180,
                            width: MediaQuery.of(context).size.width/2,
                            color: Colors.blue,
                            child: Image.asset('img_1.png',fit:BoxFit.cover,),
                          ),

                    ],
                  ),
                ],
              ),


        ],
      ),


      
    );
  }
}
