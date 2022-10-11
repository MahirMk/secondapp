import 'package:flutter/material.dart';
import 'package:secondapp/BmiCalculator.dart';
import 'package:secondapp/CardPractice.dart';
import 'package:secondapp/DialerScreen.dart';
import 'package:secondapp/FirstScreen.dart';
import 'package:secondapp/MxPlayerExample.dart';
import 'package:secondapp/StudentForm.dart';
import 'package:secondapp/StudentResult.dart';
import 'package:secondapp/TextFieldExample.dart';
import 'package:secondapp/TruecallerExample.dart';
import 'package:secondapp/ValidationForm.dart';
import 'package:secondapp/WatsappExample.dart';

class AllDarts extends StatefulWidget {

  @override
  State<AllDarts> createState() => _AllDartsState();
}

class _AllDartsState extends State<AllDarts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Files"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>BmiCalculator())
                      );
                    },
                    child: Text("BMI Calculator")
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>DialerScreen())
                      );
                    },
                    child: Text("Dialer Pad")
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>WatsappExample())
                      );
                    },
                    child: Text("WatsApp")
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>TruecallerExample())
                      );
                    },
                    child: Text("TrueCaller")
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>CardPractice())
                      );
                    },
                    child: Text("Card")
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>MxPlayerExample())
                      );
                    },
                    child: Text("Mx Player")
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>FirstScreen())
                      );
                    },
                    child: Text("Admission Form")
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
