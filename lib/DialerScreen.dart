import 'package:flutter/material.dart';
class DialerScreen extends StatefulWidget {
  @override
  State<DialerScreen> createState() => _DialerScreenState();
}
class _DialerScreenState extends State<DialerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Dialer Pad"),
        )
      ),
      body: Container(
        color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                  ),
                    border: Border.all(color: Colors.indigo,width: 2.0),
                    boxShadow: [
                      BoxShadow(color: Colors.green.shade200,offset: Offset(-10,-10)),
                    ]
                ),
                child: Column(
                  children: [
                    Text("1"),
                    Text("&"),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black,width: 5.0),
                ),
                child: Column(
                  children: [
                    Text("2"),
                    Text("ABC"),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black,width: 5.0),
                ),
                child: Column(
                  children: [
                    Text("3"),
                    Text("DEF"),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black,width: 5.0),
                ),
                child: Column(
                  children: [
                    Text("4"),
                    Text("GHI"),
                  ],
                ),
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text("5"),
                    Text("JKL"),
                  ],
                ),
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text("6"),
                    Text("MNO"),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text("7"),
                    Text("PQRS"),
                  ],
                ),
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text("8"),
                    Text("TUV"),
                  ],
                ),
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text("9"),
                    Text("XYZ"),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text("*"),
                  ],
                ),
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text("0"),
                    Text("+"),
                  ],
                ),
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text("#"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}

