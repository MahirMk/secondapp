import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefenceDemo extends StatefulWidget {

  @override
  State<SharedPrefenceDemo> createState() => _SharedPrefenceDemoState();
}

class _SharedPrefenceDemoState extends State<SharedPrefenceDemo> {

  TextEditingController _name = TextEditingController();
  TextEditingController _rollno = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Shared Prefence Demo")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: Text("Name",style: TextStyle(fontSize: 30.0)),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue)
              ),
              child: TextFormField(
                controller: _name,
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(height: 50.0,),
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: Text("Roll No",style: TextStyle(fontSize: 30.0),),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue)
              ),
              child: TextFormField(
                controller: _rollno,
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(height: 50.0,),
            Padding(
              padding: const EdgeInsets.all(48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () async{
                      var txtnm = _name.text.toString();
                      var txtnum = _rollno.text.toString();
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setString("firstname", txtnm);
                      prefs.setString("secondname", txtnum);

                      _name.text="";
                      _rollno.text="";
                      print("Value Stored In Memory");
                      print("Value Stored In Memory");
                    },
                    child: Text("Store"),
                  ),
                  ElevatedButton(
                    onPressed: () async{
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      if(prefs.containsKey("firstname"))
                      {
                        var n = prefs.getString("firstname");
                        var p = prefs.getString("secondname");
                        print("Value  : "+n);
                        print("Roll Num : "+p);
                      }
                      else
                      {
                        print("No Value");
                      }
                    },
                    child: Text("Read"),
                  ),
                  ElevatedButton(
                    onPressed: () async{
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                     if(prefs.containsKey("firstname"))
                       {
                         prefs.clear(); //all value delete
                         // prefs.remove("secondname");//specific name
                       }
                    },
                    child: Text("Delete"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
