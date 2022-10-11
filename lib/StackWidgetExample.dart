import 'package:flutter/material.dart';

class StackWidgetExample extends StatefulWidget {

  @override
  State<StackWidgetExample> createState() => _StackWidgetExampleState();
}

class _StackWidgetExampleState extends State<StackWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Stack")),
      ),
      body: Stack(
        children: [
          Container(
            width: 300.0,
            height: 600.0,
            color: Colors.yellow,
          ),
          Positioned(
            top: 20.0,
            left: 120.0,
            child:  Container(
              width: 60.0,
              height: 300.0,
              color: Colors.orange,
            ),
          ),
          Positioned(
            top: 20.0,
            left: 20.0,
            child:  Container(
              width: 100.0,
              height: 300.0,
              color: Colors.green,
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 20.0,
            child:  Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
            ),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child:  Container(
              width: 100.0,
              height: 100.0,
              color: Colors.pink,
            ),
          ),
          Positioned(
            top: 20.0,
            right: 20.0,
            child:  Container(
              width: 100.0,
              height: 300.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
