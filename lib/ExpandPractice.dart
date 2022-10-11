import 'package:flutter/material.dart';
class ExpandPractice extends StatefulWidget {
  @override
  State<ExpandPractice> createState() => _ExpandPracticeState();
}
class _ExpandPracticeState extends State<ExpandPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Expand Practice"),
        ),
      ),
      body: Column(
        children: [
          // Row(
          //   children: [
          //     Text("Name"),
          //     Expanded(
          //       child: TextField(),
          //     )
          //   ],
          // )
      // Expanded(
      //     child: Container(
      //     width: MediaQuery.of(context).size.width,
      //     height: 150.0,
      //     color: Colors.green,
      //   ),
      //   ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 60.0,
      //       color: Colors.green,
      // )
        Flexible(
          flex: 1,
            child:   Container(
              width: MediaQuery.of(context).size.width,
              height: 150.0,
              color: Colors.blue,
            ),
        ),
          Flexible(
            flex: 1,
            child: Container(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            color: Colors.green,
          ),
          ),
          Flexible(
            flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150.0,
                color: Colors.pink,
              ),
          ),
        ],
      ),
    );
  }
}
