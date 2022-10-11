import 'package:flutter/material.dart';

class TrendingPractice extends StatefulWidget {

  @override
  State<TrendingPractice> createState() => _TrendingPracticeState();
}

class _TrendingPracticeState extends State<TrendingPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Center(
         child: Text("Trending"),
       ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Trending", style: TextStyle(fontSize: 30.0,),),
                Icon(Icons.arrow_forward, size: 50.0,),
              ],
            ),
            Container(
              width: 400.0,
              height: 150.0,
              child: Card(
                color: Colors.green,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("img/cover.png",height: 200.0,),
                    Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Title",style: TextStyle(fontSize:25.0,backgroundColor: Colors.blue,),),
                          ),
                        ),
                        Text("Title"),
                      ],
                    )
                  ],
                ),
              ),
            ),

            Container(
              width: 400.0,
              height: 150.0,
              child: Card(
                color: Colors.pink,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("img/cover.png",height: 200.0,),
                    Column(
                      children: [
                        Text("Title"),
                        Text("Title",style: TextStyle(fontSize: 30.0),),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 400.0,
              height: 150.0,
              child: Card(
                color: Colors.lightBlue,
              ),
            ),
            Container(
              width: 400.0,
              height: 150.0,
              child: Card(
                color: Colors.green,
              ),
            ),
            Container(
              width: 400.0,
              height: 150.0,
              child: Card(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
