import 'package:flutter/material.dart';

class ContainerExample extends StatefulWidget {

  @override
  State<ContainerExample> createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Center(
        child: Container(
          //width: 200.0,
          //width: MediaQuery.of(context).size.width * 0.2,
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          margin: EdgeInsets.all(15.0),
          padding: EdgeInsets.all(15.0),
          alignment: Alignment.bottomRight,
          //margin: EdgeInsets.only(left: 50.0,right: 10.0),
          // height: MediaQuery.of(context).size.height,
         // height: 200.0,
          child: Text("Hello World"),
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.cyan,width: 5.0),
            boxShadow: [
                BoxShadow(color: Colors.green.shade200,offset: Offset(10,10))
            ],
          ),
          // child: Column(
          //   children: [
          //     Text("Hwllo World"),
          //     Text("Hwllo World"),
          //     Text("Hwllo World")
          //   ],
          // ),
        ),
      ),
    );
  }
}
