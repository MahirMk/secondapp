import 'package:flutter/material.dart';

class TextPrint extends StatefulWidget {

  var fname="";
  var name="";
  TextPrint({this.name,this.fname});

  @override
  State<TextPrint> createState() => _TextPrintState();
}

class _TextPrintState extends State<TextPrint> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.fname),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(widget.name),
          ],
        ),
      ),
    );
  }
}
// var name="";
// var salary="";
//
// SecondScreen({this.name,this.salary});
//
// children: [
// Text(widget.name),
// Text(widget.salary),