import 'package:flutter/material.dart';
import 'package:secondapp/CardPractice.dart';
import 'package:secondapp/DialerScreen.dart';
import 'package:secondapp/ExpandPractice.dart';
import 'package:secondapp/FirstScreen.dart';
import 'package:secondapp/TextFieldExample.dart';



class TabExample extends StatefulWidget {
  @override
  State<TabExample> createState() => _TabExampleState();
}

class _TabExampleState extends State<TabExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabs"),
          actions: [
            IconButton(onPressed: (){},icon: Icon(Icons.search),),
            PopupMenuButton(
                itemBuilder:(context) => [
                  PopupMenuItem(
                    child: Text("First"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("Second"),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("Third"),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text("Four"),
                    value: 4,
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
                  else if(index==2)
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
                }
            ),
          ],
          bottom: TabBar(
            indicator: BoxDecoration(
                color: Colors.greenAccent,
                image: DecorationImage(
                    image: AssetImage('assets/images/placeholder.png'),
                    fit: BoxFit.fitWidth)),
            isScrollable: true,
            indicatorColor: Colors.amberAccent,
            indicatorWeight: 10,
            tabs: [
              Tab(
                icon: Icon(Icons.star),
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              ),
              Tab(
                child: Text("Calls"),
              ),
              Tab(
                child: Text("dial"),
              ),
              Tab(
                child: Text("Calls"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            CardPractice(),
            DialerScreen(),
            FirstScreen(),
            CardPractice(),
            DialerScreen(),
            FirstScreen(),
          ],
        ),
      ),
    );
  }
}
