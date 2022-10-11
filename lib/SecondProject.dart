import 'package:flutter/material.dart';
import 'package:secondapp/FirstProject.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SecondProject extends StatefulWidget {
  @override
  State<SecondProject> createState() => _SecondProjectState();
}
class _SecondProjectState extends State<SecondProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Center(child: Text("BAR")),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(child: Text("WELCOME TO BAR",style: TextStyle(fontSize: 40.0,color: Colors.pink),)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: ElevatedButton(
                onPressed: () async{
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.clear();
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>FirstProject())
                  );
                },
                child: Text("LOGOUT"),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
