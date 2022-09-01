import 'package:flutter/material.dart';
import 'package:my_flutter_projects/Registration/space.dart';

import 'CommonWidgets.dart';
import 'ItemList.dart';
import 'MenuPage.dart';

class RestaurantUI extends StatefulWidget {
  const RestaurantUI({Key? key}) : super(key: key);

  @override
  State<RestaurantUI> createState() => _RestaurantUIState();
}

class _RestaurantUIState extends State<RestaurantUI> {

  bool pizzaSelected = false;
  bool veg=false;
  bool nonveg=false;
  bool snacks=false;
  bool burgur=false;
  bool iceCream=false;
  bool coldDrinks=false;
  bool dessert=false;
  bool fastFood=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(top: 45, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text('What do You Like ?', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontStyle: FontStyle.italic
            ),),
            verticalSpace(10),
            Text('Chooes upto 4 types', style: TextStyle(fontSize: 20),),
            verticalSpace(40),
            Row(
              children: [GestureDetector(
                onTap:(){
                  setState(() {
                    veg=!veg;
                  });
                },
               child: CommonContainer(icon: Icons.rice_bowl_outlined, label: 'Veg',isSelected: veg)),
                horizontalSpace(10),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      nonveg=!nonveg;
                    });
                  },
                child :CommonContainer(icon: Icons.no_meals_ouline, label: 'Non Veg',isSelected: nonveg)),
                horizontalSpace(10),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      snacks=!snacks;
                    });
                  },
                child:CommonContainer(
                    icon: Icons.pending_actions_outlined, label: 'Snacks',isSelected: snacks),),
              ],
            ),
            verticalSpace(40),
            Row(
              children: [
                GestureDetector(onTap: () {
                  setState(() {
                    pizzaSelected = !pizzaSelected;
                  });
                },
                    child: CommonContainer(icon: Icons.local_pizza_outlined,
                        label: 'Pizza',
                        isSelected: pizzaSelected)),
                horizontalSpace(10),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      burgur=!burgur;
                    });
                  },
                  child:CommonContainer(icon: Icons.rice_bowl_sharp, label: 'Burgers',isSelected: burgur),),
                horizontalSpace(10),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      iceCream=!iceCream;
                    });
                  },
                child:CommonContainer(
                    icon: Icons.balcony_rounded, label: 'Ice Creams',isSelected: iceCream),),
              ],
            ), verticalSpace(40),
            Row(
              children: [
                GestureDetector(
                  onTap:(){
                    setState(() {
                      coldDrinks=!coldDrinks;
                    });
                  },
                child:CommonContainer(
                    icon: Icons.coffee_outlined, label: 'Cold Drinks',isSelected: coldDrinks)),
                horizontalSpace(10),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      fastFood=!fastFood;
                    });
                  },
                child:CommonContainer(
                    icon: Icons.fastfood_outlined, label: 'Fast food',isSelected: fastFood),),
                horizontalSpace(10),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      dessert=!dessert;
                    });
                  },
                child:CommonContainer(
                    icon: Icons.delete_sweep_sharp, label: 'Dessert',isSelected: dessert)),


              ],
            ),
            verticalSpace(60),
            Center(
              child: MaterialButton(onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MenuPage()
                ));
              },
                height: 40,
                minWidth: 90,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.orangeAccent,
                child: Text('Continue >',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),


              ),
            ),

          ],
        ),
      ),

    );
  }
}
