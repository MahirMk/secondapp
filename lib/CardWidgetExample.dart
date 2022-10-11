import 'package:flutter/material.dart';

class CardWidgetExample extends StatefulWidget {

  @override
  State<CardWidgetExample> createState() => _CardWidgetExampleState();
}

class _CardWidgetExampleState extends State<CardWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue,
          child: Column(
            children: [
              Image.network("https://www.logodesign.net/images/nature-logo.png"),
              FadeInImage.assetNetwork(
                placeholder: "img/cover.png",
                image: "https://image.shutterstock.com/image-vector/eye-vision-logo-design-icon-260nw-1656429649.jpg",
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: 150.0,
                height: 100.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown,width: 5.0),
                    boxShadow: [
                      BoxShadow(color: Colors.red.shade200,offset: Offset(2,-2))
                    ]
                ),
                child: Card(
                  color: Colors.orange.shade200,
                  elevation: 25.0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 130.0,
                      color: Colors.white,
                      child: Text("Mahir",style: TextStyle(letterSpacing: 10.0,fontSize: 29.0,color: Colors.blue.shade900,fontWeight: FontWeight.bold,backgroundColor: Colors.white10),),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.0,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>DialerScreen())
                  );
                },
                child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.black,width: 1.0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                      ),
                    ),
                    child: Center(child: Text("Dial Pad",
                      style: TextStyle(color: Colors.white,fontSize: 30.0,letterSpacing: 3.0)
                      ,)
                      ,)
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Container(
                height: 200.0,
                child: Card(
                  color: Colors.yellow.shade200,
                  elevation: 15.0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      color: Colors.white,
                      child: Text("Mahir"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>ValidationForm())
                  );
                },
                child: Container(
                    width: 50.0,
                    color: Colors.redAccent,
                    child: Center(child: Text("GO",style: TextStyle(fontSize: 23.0,color: Colors.white),),)
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Container(
                width: 200.0,
                height: 200.0,
                child: Card(
                  color: Colors.pink.shade200,
                  elevation: 15.0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width:500.0,
                      padding: const EdgeInsets.only(bottom : 100.0),
                      child: Text("Mahir",style: TextStyle(color: Colors.white,backgroundColor: Colors.grey),),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Container(
                width: 200.0,
                height: 200.0,
                child: Card(
                  color: Colors.green.shade200,
                  elevation: 15.0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      color: Colors.white,
                      child: Text("Mahir"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

