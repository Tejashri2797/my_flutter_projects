
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text('Hello world....',
              style: TextStyle(
                  fontSize: 43.6,
                  color: Colors.lightGreen,
                  backgroundColor: Colors.pink)),
        ));
  }
}
