import 'package:flutter/material.dart';


class ButtonPractice extends StatefulWidget {
  const ButtonPractice({Key? key}) : super(key: key);

  @override
  State<ButtonPractice> createState() => _ButtonPracticeState();
}

class _ButtonPracticeState extends State<ButtonPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      /*  FloatingActionButton(onPressed: (){
          print(1);
        },
          child: Icon(Icons.message),
          mini: true,
          backgroundColor: Colors.orangeAccent,
          foregroundColor: Colors.cyanAccent,
        ),*/

      floatingActionButton: FloatingActionButton.extended(
        autofocus: true,
        backgroundColor: Colors.cyanAccent,
        foregroundColor: Colors.white,
        onPressed: () {},
        label: Text('Download'),
        icon: Icon(Icons.save_alt),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Invalid Credential'),
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(milliseconds: 1000),
                    margin: EdgeInsets.symmetric(vertical: 100, horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                    elevation: 20,
                  ),
                );
              },
              child: Text('SnackBar'),
              color: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            PopupMenuButton(itemBuilder: (context)=>[PopupMenuItem(child: Text('abc'))
              
            ])
          ],
        ),
      ),
    );
  }
}
