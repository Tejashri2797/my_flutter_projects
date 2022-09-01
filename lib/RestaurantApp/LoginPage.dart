import 'package:flutter/material.dart';
import 'package:my_flutter_projects/Registration/space.dart';

import 'RestaurantUI.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/3,
            width:MediaQuery.of(context).size.width ,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.local_restaurant_sharp,color: Colors.redAccent,size: 60,),
                ),
                verticalSpace(10),
                Text('Food Bank',style: TextStyle(fontSize: 35.0,
                    fontWeight:FontWeight.bold,color: Colors.white),),
                Text('Special And Delicious Food',style: TextStyle(color: Colors.white,fontSize: 15),)

              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/3,
            width:MediaQuery.of(context).size.width ,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(onPressed: (){
                  Navigator.pushNamed(context, '/second');
                },
                  minWidth: 150,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.red,
                  child: Text('Log In',style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,fontSize: 20),),
                ),
               verticalSpace(15),
               MaterialButton(onPressed: (){},
                 minWidth: 150.0,
                 height: 40.0,
               color: Colors.white,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20),
               ),
                 child: Text('Sign Up',style: TextStyle(color: Colors.black,fontWeight:
                 FontWeight.bold,fontSize: 20)),
               )

              ],
            ),
          ),
          Container(
            padding:EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height/3,
            width:MediaQuery.of(context).size.width ,
            color: Colors.black12,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.black,
              child: Image.asset('food.jpeg',fit:BoxFit.cover ,),
            ),
          ),
        ],
      ),

    );
  }
}
