import 'package:flutter/material.dart';
import 'package:secondapp/FlutterToastDemo.dart';
import 'package:secondapp/FlutterToastExample.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FlutterToastSplash extends StatefulWidget {

  @override
  State<FlutterToastSplash> createState() => _FlutterToastSplashState();
}

class _FlutterToastSplashState extends State<FlutterToastSplash> {

checklogin() async
{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if(prefs.containsKey("islogin"))
  {
    Navigator.of(context).pop();
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=>FlutterToastDemo())
    );
  }
  else
  {
    Navigator.of(context).pop();
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=>FlutterToastExample())
    );
  }
}

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      checklogin();
    });

  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("img/facebook.jpg"),
      ),
    );
  }
}
