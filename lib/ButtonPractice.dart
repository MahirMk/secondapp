import 'package:flutter/material.dart';
class ButtonPractice extends StatefulWidget {
  @override
  State<ButtonPractice> createState() => _ButtonPracticeState();
}
class _ButtonPracticeState extends State<ButtonPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Button"),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   backgroundColor: Colors.red,
      //   child: Icon(Icons.add_a_photo),
      // ),
      floatingActionButton: FloatingActionButton.extended(

        onPressed: (){},
        label: Text("ADD"),
        icon: Icon(Icons.add_a_photo),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FlatButton(
              onPressed: (){
                print("Flat Button Clicked");
              },
              color: Colors.blue,
              textColor: Colors.white,
              splashColor: Colors.red,
              child: Text("Flat Button"),
            ),
            RaisedButton(
              onPressed: (){
                print("RaisedButton Clicked");
              },
              color: Colors.blue,
              textColor: Colors.white,
              splashColor: Colors.red,
              child: Text("RaisedButton Button"),
            ),
            TextButton(
              onPressed: ()
              {

              },
              child: Text("Text Button"),
            ),
            InkWell(
              onTap: ()
              {

              },
              child: Text("InkWell"),
            ),
            ElevatedButton(
              onPressed: ()
              {

              },
              child: Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: (){},
              child: Text("Outline"),
            ),
            IconButton(
              onPressed: (){},
              iconSize: 100.0,
              icon: Icon(Icons.star),
            ),
            GestureDetector(
              onTap: (){
                print("Image Click");
              },
              child: Image.asset("img/cover.png",width: 100.0,height: 100.0,),
            ),
            FlatButton(
              onPressed: (){
                print("Flat Button Clicked");
              },
              color: Colors.blue,
              textColor: Colors.white,
              splashColor: Colors.red,
              child: Text("Flat Button"),
            ),
            RaisedButton(
              onPressed: (){
                print("RaisedButton Clicked");
              },
              color: Colors.blue,
              textColor: Colors.white,
              splashColor: Colors.red,
              child: Text("RaisedButton Button"),
            ),
            TextButton(
              onPressed: ()
              {

              },
              child: Text("Text Button"),
            ),
            InkWell(
              onTap: ()
              {

              },
              child: Text("InkWell"),
            ),
            ElevatedButton(
              onPressed: ()
              {

              },
              child: Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: (){},
              child: Text("Outline"),
            ),
            IconButton(
              onPressed: (){},
              iconSize: 100.0,
              icon: Icon(Icons.star),
            ),
            GestureDetector(
              onTap: (){
                print("Image Click");
              },
              child: Image.asset("img/cover.png",width: 100.0,height: 100.0,),
            ),
            FlatButton(
              onPressed: (){
                print("Flat Button Clicked");
              },
              color: Colors.blue,
              textColor: Colors.white,
              splashColor: Colors.red,
              child: Text("Flat Button"),
            ),
            RaisedButton(
              onPressed: (){
                print("RaisedButton Clicked");
              },
              color: Colors.blue,
              textColor: Colors.white,
              splashColor: Colors.red,
              child: Text("RaisedButton Button"),
            ),
            TextButton(
              onPressed: ()
              {

              },
              child: Text("Text Button"),
            ),
            InkWell(
              onTap: ()
              {

              },
              child: Text("InkWell"),
            ),
            ElevatedButton(
              onPressed: ()
              {

              },
              child: Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: (){},
              child: Text("Outline"),
            ),
            IconButton(
              onPressed: (){},
              iconSize: 100.0,
              icon: Icon(Icons.star),
            ),
            GestureDetector(
              onTap: (){
                print("Image Click");
              },
              child: Image.asset("img/cover.png",width: 100.0,height: 100.0,),
            )
          ],
        ),
      ),
    );
  }
}
