import 'package:flutter/material.dart';

class ListviewHorizontalExample extends StatefulWidget {
  @override
  State<ListviewHorizontalExample> createState() => _ListviewHorizontalExampleState();
}

class _ListviewHorizontalExampleState extends State<ListviewHorizontalExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Listview Horizontal")),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 200.0,
        child: ListView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              color: Colors.red,
              margin: EdgeInsets.all(10.0),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              color: Colors.green,
              margin: EdgeInsets.all(10.0),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              color: Colors.blue,
              margin: EdgeInsets.all(10.0),
            ),
          ],
        ),
      ),
    );
  }
}
