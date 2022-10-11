import 'package:flutter/material.dart';

class AlaksaAppScreens extends StatefulWidget {

  @override
  State<AlaksaAppScreens> createState() => _AlaksaAppScreensState();
}

class _AlaksaAppScreensState extends State<AlaksaAppScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alaksa"),
      ),
      body: Column(
        children: [
          Image.asset("img/alaksa.png"),
        ],
      ),
    );
  }
}
