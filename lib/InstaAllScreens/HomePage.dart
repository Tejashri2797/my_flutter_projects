import 'package:flutter/material.dart';
import 'package:my_flutter_projects/Registration/space.dart';

import 'CommonList.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Instagram',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black,fontFamily:'Faradilla Queen Demo',),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message,
                color: Colors.black,
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (context, int index) {
                return Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      margin: EdgeInsets.only(right: 10, left: 10),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.redAccent,
                        child: CircleAvatar(
                          radius: 31,
                          backgroundImage: AssetImage(
                            stories[index]['image'],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      stories[index]['name'],
                      style:
                      const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                  ],
                );
              },
            ),
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: ListView.builder(
              itemCount: post.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(stories[index]['image']),
                        ),
                        Text(post[index]['name'],style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                        const Spacer(),
                        Icon(Icons.menu),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image: AssetImage(post[index]['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.favorite_border,
                          size: 20,
                        ),
                        const Icon(Icons.message,size: 20,),
                        horizontalSpace(5),
                        const Icon(Icons.notification_important_sharp,size: 20,),
                        const Spacer(),
                        const Icon(Icons.save,size: 20,),
                        verticalSpace(20)
                      ],
                    ),
                    verticalSpace(30),
                  ],

                );
              },
            ),

          ),

        ],
      ),
    );
  }
}
