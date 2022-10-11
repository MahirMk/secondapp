import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:secondapp/DrawerExample.dart';
class SharedPreferenceExample extends StatefulWidget {
  @override
  State<SharedPreferenceExample> createState() => _SharedPreferenceExampleState();
}
class _SharedPreferenceExampleState extends State<SharedPreferenceExample> {

  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Shared Preference",style: TextStyle(color: Colors.white),)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 20.0),
              child: Text("Name"),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: _name,
                keyboardType: TextInputType.text,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () async{

                      var nm = _name.text.toString();
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setString("firstname", nm);

                      _name.text="";
                      print("Value Stored In Memory");
                    },
                    child: Text("Store"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, // Background color
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async{


                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      if(prefs.containsKey("firstname"))
                        {
                          var n = prefs.getString("firstname");
                          print("Value  : "+n);
                        }
                      else
                        {
                          print("No Value");
                        }
                    },
                    child: Text("Read"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, // Background color
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    child: Text("Delete"),
                    // Background color
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
