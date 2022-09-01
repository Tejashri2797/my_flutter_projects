import 'package:flutter/material.dart';

class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network('https://th.bing.com/th/id/OIP.3VoBZT5XoCPPH9R40-hpDwHaFP?pid=ImgDet&rs=1'),
            Text('Delight Pizza and pocket',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20
            ),),
            Text('fast food, Beverages pizza \n Rating: ***/5\n Price:200only')
          ],
        ),
      ),
    );
  }
}
