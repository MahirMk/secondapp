import 'package:flutter/material.dart';
import 'package:secondapp/BmiCalculator.dart';
import 'package:secondapp/CardPractice.dart';
import 'package:secondapp/DialerScreen.dart';

import 'DropDownExample.dart';
import 'TextFieldExample.dart';

class WatsappExample extends StatefulWidget {
  @override
  State<WatsappExample> createState() => _WatsappExampleState();
}
class _WatsappExampleState extends State<WatsappExample> {
  var selected=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WatsApp"),
          actions: [
            IconButton(onPressed: (){},icon: Icon(Icons.search),),
            PopupMenuButton(
                itemBuilder:(context) => [
                  PopupMenuItem(
                    child: Text("New Group"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("New Broadcast"),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("Linked devices"),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text("Starred messages"),
                    value: 4,
                  ),
                  PopupMenuItem(
                    child: Text("Payments"),
                    value: 5,
                  ),
                  PopupMenuItem(
                    child: Text("Settings"),
                    value: 6,
                  ),
                ],
                onSelected: (index)
                {
                  if(index==1)
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>TextFieldExample())
                    );
                  }
                  else if(index==2)
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>TextFieldExample())
                    );
                  }
                  else if(index==3)
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>TextFieldExample())
                    );
                  }
                  else if(index==4)
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>TextFieldExample())
                    );
                  }
                  else if(index==5)
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>TextFieldExample())
                    );
                  }
                  else if(index==6)
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>TextFieldExample())
                    );
                  }
                }
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("CHATS"),
              ),
              Tab(
                child: Text("STATUS"),
              ),
              Tab(
                child: Text("CALLS"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}
