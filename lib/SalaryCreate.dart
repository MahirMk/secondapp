import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:secondapp/SalaryOutput.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ValidationForm.dart';

class SalaryCreate extends StatefulWidget {
  @override
  State<SalaryCreate> createState() => _SalaryCreateState();
}

class _SalaryCreateState extends State<SalaryCreate> {

  TextEditingController _name = TextEditingController();
  TextEditingController _salary = TextEditingController();

  var txtname="";
  var txtsalary="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Salary Create")),
      ),
      body: SingleChildScrollView(
        child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Name",style: TextStyle(fontSize: 50.0,color: Colors.green),),
           ),
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: TextField(
               controller: _name,
               keyboardType: TextInputType.name,
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Salary",style: TextStyle(fontSize: 50.0,color: Colors.green),),
           ),
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: TextField(
               controller: _salary,
               keyboardType: TextInputType.number,
             ),
           ),
           ElevatedButton(onPressed: () async{

             var nm = _name.text.toString();
             var sl = _salary.text.toString();

             SharedPreferences prefs = await SharedPreferences.getInstance();
             prefs.setString("isSubmit", "yes");

             if(nm=='mahir' && sl=='1234')
             {
               Fluttertoast.showToast(
                   msg: "Your pin is correct",
                   toastLength: Toast.LENGTH_SHORT,
                   gravity: ToastGravity.CENTER,
                   timeInSecForIosWeb: 1,
                   backgroundColor: Colors.red,
                   textColor: Colors.white,
                   fontSize: 16.0
               );

               SharedPreferences prefs = await SharedPreferences.getInstance();
               prefs.setString("islogin", "yes");

               Navigator.of(context).pop();
               Navigator.of(context).push(
                   MaterialPageRoute(builder: (context)=>SalaryOutput(name: nm,salary: sl,))
               );
             }
             else
             {
               Fluttertoast.showToast(
                   msg: "Your pin is Incorrect",
                   toastLength: Toast.LENGTH_SHORT,
                   gravity: ToastGravity.CENTER,
                   timeInSecForIosWeb: 1,
                   backgroundColor: Colors.red,
                   textColor: Colors.white,
                   fontSize: 16.0
               );
             }
           },
             child: Text("SUBMIT"),
           ),
         ],
        ),
      ),
    );
  }
}
