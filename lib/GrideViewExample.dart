import 'package:flutter/material.dart';



class GrideViewExample extends StatefulWidget {
  @override
  State<GrideViewExample> createState() => _GrideViewExampleState();
}

class _GrideViewExampleState extends State<GrideViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Gride View")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0
            ),
            children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    color: Colors.red,
                  ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                color: Colors.red,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                color: Colors.red,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                color: Colors.red,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                color: Colors.red,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                color: Colors.red,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                color: Colors.red,
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text("Start"),
              )
            ],
          ),
      ),
      // body: GridView.count(
      //     crossAxisCount: 3,
      //   children: [
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 200.0,
      //       color: Colors.red,
      //       margin: EdgeInsets.all(10.0),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 200.0,
      //       color: Colors.red,
      //       margin: EdgeInsets.all(10.0),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 200.0,
      //       color: Colors.red,
      //       margin: EdgeInsets.all(10.0),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 200.0,
      //       color: Colors.red,
      //       margin: EdgeInsets.all(10.0),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 200.0,
      //       color: Colors.red,
      //       margin: EdgeInsets.all(10.0),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 200.0,
      //       color: Colors.red,
      //       margin: EdgeInsets.all(10.0),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 200.0,
      //       color: Colors.red,
      //       margin: EdgeInsets.all(10.0),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 200.0,
      //       color: Colors.red,
      //       margin: EdgeInsets.all(10.0),
      //     ),
      //   ],
      //   ),
      );
  }
}
