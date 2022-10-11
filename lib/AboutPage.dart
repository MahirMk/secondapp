import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget
{
  @override
  AboutPageState createState()=>AboutPageState();
}

class AboutPageState extends State<AboutPage>
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("About Page"),
     ),
     body: Text("This is About Page"),
   );
  }
}