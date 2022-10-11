import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Home"),
      ),
      // body: Center(
      //   child: Text("Main Home"),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Col 1"),
          Row(
            children: [
              Text("Row 1"),
              Text("Row 2"),
              Column(
                children: [
                  Text("Col 11"),
                  Text("Col 12"),
                ],
              )
            ],
          ),
          Text("Col 3"),
        ],
      ),
    );
  }
}
