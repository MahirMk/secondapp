import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import 'DialerScreen.dart';

class AccordionExample extends StatefulWidget {
  @override
  State<AccordionExample> createState() => _AccordionExampleState();
}

class _AccordionExampleState extends State<AccordionExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Accordian")),
      ),
      drawer: GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            ListTile(
              title: Text('Item 1'),
              onTap: null,
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: null,
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: null,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.pinkAccent,
              child: GFAccordion(
                title: 'Karon InfoTech',
                contentChild: Row(
                  children: [
                    Icon(Icons.computer),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("KaronInfoTech"),
                    ),
                  ],
                ),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
              ),
            ),
            SizedBox(height: 50.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan,width: 5.0),
              ),
              child: GFAccordion(
                  title: 'GF Accordion',
                  content: 'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                  collapsedIcon: Text('Show'),
                  expandedIcon: Text('Hide')
              ),
            ),
            GFToggle(
              onChanged: (val){},
              value: true,
              type: GFToggleType.square,
            ),
            SizedBox(height: 100,),
            GFToggle(
              onChanged: (val){
                if(val==true)
                {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>DialerScreen())
                  );
                }
                else
                {
                  null;
                }
              },
              value: true,
              type: GFToggleType.ios,
            ),
            SizedBox(height: 100,),
            GFProgressBar(
                percentage: 0.7,
                backgroundColor : Colors.black26,
                progressBarColor: GFColors.DANGER
            ),
            SizedBox(height: 100,),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 15, vertical: 15),
              child: GFBorder(
                color: Color(0xFF19CA4B),
                dashedLine: [2, 0],
                type: GFBorderType.rect,
                child: Image.asset(
                  'img/youtube.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            GFListTile(
                titleText:'Title',
                subTitleText:'Lorem ipsum dolor sit amet, consectetur adipiscing',
                icon: Icon(Icons.favorite)
            )
          ],
        ),
      ),
    );
  }
}
