import 'package:flutter/material.dart';

class TextWidgetExample extends StatefulWidget {

  @override
  State<TextWidgetExample> createState() => _TextWidgetExampleState();
}

class _TextWidgetExampleState extends State<TextWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Center(
        child: Text("Hello World",style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w900,
          letterSpacing: 5.0,
          wordSpacing: 15.0,
          color: Color(0xff880e4f),
          backgroundColor: Colors.yellow.shade400,
          fontStyle: FontStyle.italic
          //color: Colors.red.shade300
        )),
      ),
    );
  }
}
