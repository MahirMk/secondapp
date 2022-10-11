import 'package:flutter/material.dart';
import 'package:secondapp/FirstProject.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SecondProject.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  checklogin() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("islogin"))
    {
      Navigator.of(context).pop();
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>SecondProject())
      );
    }
    else
      {
        Navigator.of(context).pop();
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>FirstProject())
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("img/youtube.png"),
      ),
    );
  }
}
