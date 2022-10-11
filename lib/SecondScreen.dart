import 'package:flutter/material.dart';
import 'package:secondapp/TextPrint.dart';

class SecondScreen extends StatefulWidget {
  var heading="";
  var name="";
  var rollno="";
  var english="";
  var maths="";
  var science="";

  var radios="";

  var dropdown="";

  SecondScreen({this.heading,this.name,this.rollno,this.english,this.maths,this.science,this.radios,this.dropdown});
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
         child: Container(
           child: Text(widget.heading,style: TextStyle(fontSize: 30.0),),
         ),
        ),
      ),

      body: Container(
        child: Container(
          color: Colors.black,
        child: SingleChildScrollView(

              child: Padding(
                padding: const EdgeInsets.all(100.0),
                child: Column(
                  children: [
                    Text("Name :"+widget.name,style: TextStyle(color: Colors.blue,fontSize: 30.0),),
                    SizedBox(height: 10.0,),
                    Text("Roll No :"+widget.rollno, style: TextStyle(color: Colors.blue,fontSize: 30.0),),
                    SizedBox(height: 30.0,),
                    Text("English :"+widget.english, style: TextStyle(color: Colors.red,fontSize: 30.0),),
                    SizedBox(height: 10.0,),
                    Text("Maths :"+widget.maths, style: TextStyle(color: Colors.red,fontSize: 30.0),),
                    SizedBox(height: 10.0,),
                    Text("Science :"+widget.science, style: TextStyle(color: Colors.red,fontSize: 30.0),),
                    SizedBox(height: 10.0,),
                    Text("Gender :"+widget.radios, style: TextStyle(color: Colors.grey,fontSize: 29.0),),
                    SizedBox(height: 10.0,),
                    Text("Standard :"+widget.dropdown, style: TextStyle(color: Colors.green,fontSize: 30.0),),
                    SizedBox(height: 50.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(10.0),
                           topRight: Radius.circular(10.0),
                           bottomLeft: Radius.circular(10.0),
                           bottomRight: Radius.circular(10.0),
                         ),
                         border: Border.all(color: Colors.purple,width: 3.0),
                       ),
                       // width: MediaQuery.of(context).size.width * 0.2,
                       child: Center(child: Text("Back",style: TextStyle(color: Colors.white,fontSize: 45.0,),),),
                     ),
                    ),
                  ],
                ),
              ),
            ),
      ),
        ),
      );
  }
}
