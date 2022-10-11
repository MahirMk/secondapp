import 'package:flutter/material.dart';
import 'package:secondapp/DropDownExample.dart';

class BottomNavigationExample extends StatefulWidget {

  @override
  State<BottomNavigationExample> createState() => _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {

  var selected=0;
  var index;

  // if(i<=0)
  // {
  //
  // }
  // else
  // {
  //
  // }
  //
  // (i<=10)?sdfgdfsg:sdfsd

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (selected==0)?Colors.red:(selected==1)?Colors.blue:Colors.green,
        title:(selected==0)?Text("Home"):(selected==1)?Text("About"):Text("Settings"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: (index)
        {
          setState(() {
            selected=index;
          });
        },
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.green.shade400,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_sharp),
              label: "About"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Account"
          ),
        ],
      ),
      body: (selected==0)?DropDownExample():(selected==1)?Text("Tab 2"):Text("Tab 3"),
    );
  }
}
