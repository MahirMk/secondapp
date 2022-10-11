import 'package:flutter/material.dart';
import 'package:secondapp/SalaryCreate.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SalaryOutput extends StatefulWidget {

  var name="";
  var salary="";

  SalaryOutput({this.name,this.salary,});

  @override
  State<SalaryOutput> createState() => _SalaryOutputState();
}

class _SalaryOutputState extends State<SalaryOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Salary Output")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Name :"+widget.name,style: TextStyle(color: Colors.blue,fontSize: 30.0),),
            Text("Salary :"+widget.salary,style: TextStyle(color: Colors.blue,fontSize: 30.0),),

            ElevatedButton(
              onPressed: ()async{
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.clear();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>SalaryCreate())
                );
              },
              child: Container(
                  width: 100,
                  child: Center(child: Text("Back",style: TextStyle(fontSize: 20.0),))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
