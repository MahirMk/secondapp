import 'package:flutter/material.dart';

class TableWidgetExample extends StatefulWidget {

  @override
  State<TableWidgetExample> createState() => _TableWidgetExampleState();
}

class _TableWidgetExampleState extends State<TableWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Table Widget")),
      ),
      body: SingleChildScrollView(
        child: Column(
            children:[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Table",textScaleFactor: 2,style: TextStyle(fontWeight:FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                   textDirection: TextDirection.ltr,
                   defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border:TableBorder.all(width: 2.0,color: Colors.blue),
                  children: [
                    TableRow(
                        children: [
                          Text("1",textScaleFactor: 1.6,style: TextStyle(color: Colors.pink),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("4",textScaleFactor: 1.2),
                          ),
                          Table(
                            children: [
                              TableRow(
                                children: [
                                  Text("Mahir",textScaleFactor: 1.0,style: TextStyle(color: Colors.pink),),
                                  Text("Kangda",textScaleFactor: 1.0,style: TextStyle(color: Colors.greenAccent),),
                                ]
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("3",textScaleFactor: 1.5),
                          ),
                        ]
                    ),
                    TableRow(
                        children: [
                          Text("Karon Infotech",textScaleFactor: 1.6,style: TextStyle(color: Colors.pink),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                        ]
                    ),
                    TableRow(
                        children: [
                          Table(
                            children: [
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text("University",textScaleFactor: 1.5),
                                  ),
                                ]
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                        ]
                    ),
                    TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Karon Infotech",textScaleFactor: 1.6,style: TextStyle(color: Colors.pink),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                        ]
                    ),
                    TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Karon Infotech",textScaleFactor: 1.6,style: TextStyle(color: Colors.pink),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                        ]
                    ),
                    TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Karon Infotech",textScaleFactor: 1.6,style: TextStyle(color: Colors.pink),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                        ]
                    ),
                    TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Karon Infotech",textScaleFactor: 1.6,style: TextStyle(color: Colors.pink),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                        ]
                    ),
                    TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Karon Infotech",textScaleFactor: 1.6,style: TextStyle(color: Colors.pink),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                        ]
                    ),
                    TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("B.Tech",textScaleFactor: 1.5),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("ABESEC",textScaleFactor: 1.5),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("AKTU",textScaleFactor: 1.5),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("University",textScaleFactor: 1.5),
                          ),
                        ]
                    ),

                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
