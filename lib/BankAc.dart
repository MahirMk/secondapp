import 'package:flutter/material.dart';
import 'package:secondapp/ConfirmPIn.dart';
import 'package:secondapp/CreatePin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BankAc extends StatefulWidget {

  @override

  State<BankAc> createState() => _BankAcState();
}

class _BankAcState extends State<BankAc> {

  // checkcode() async
  // {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   if(prefs.containsKey("isCode"))
  //     {
  //       Navigator.of(context).pop();
  //       Navigator.of(context).push(
  //           MaterialPageRoute(builder: (context)=>ConfirmPin())
  //       );
  //     }
  //   else
  //   {
  //     Navigator.of(context).pop();
  //     Navigator.of(context).push(
  //         MaterialPageRoute(builder: (context)=>CreatePin())
  //     );
  // }
  // }

  @override

  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Future.delayed(const Duration(milliseconds: 3000), () {
  //     checkcode();
  //   });
  //
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("img/facebook.jpg"),
      ),

    );
  }
}
