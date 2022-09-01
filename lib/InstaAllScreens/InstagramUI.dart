import 'package:flutter/material.dart';
import 'package:my_flutter_projects/Registration/space.dart';

import 'CommonList.dart';

class InstagramUI extends StatefulWidget {
  const InstagramUI({Key? key}) : super(key: key);

  @override
  State<InstagramUI> createState() => _InstagramUIState();
}

class _InstagramUIState extends State<InstagramUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Instagram',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                color: Colors.black,
              )),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black12,
        padding: EdgeInsets.all(10),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 35,
              ),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.search_outlined, size: 35)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.live_tv_rounded, size: 30)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.favorite_border, size: 35)),
            CircleAvatar(
              backgroundImage: AssetImage('abc.jpg'),
              radius: 15,
            )
          ],
        ),
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
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                        Text(post[index]['name'],style: TextStyle(fontSize: 20),),
                        Spacer(),
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
                        Icon(
                          Icons.favorite_border,
                          size: 36,
                        ),
                        Icon(Icons.message,size: 36,),
                        horizontalSpace(5),
                        Icon(Icons.notification_important_sharp,size: 36,),
                        Spacer(),
                        Icon(Icons.save,size: 36,),
                        verticalSpace(20)
                      ],
                    ),
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
