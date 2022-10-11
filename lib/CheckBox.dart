import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {

  var ch1=false;
  var ch2=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Check Box"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Checkbox(
             value: ch1,
             onChanged: (val)
             {
               setState(() {
                 ch1=val;
               });
             },
           ),
            Checkbox(
              value: ch2,
              activeColor: Colors.green,
              onChanged: (val)
              {
                setState(() {
                  ch2=val;
                });
              },
            ),
            ElevatedButton(onPressed: (){
              if(ch1==true)
                {
                  print("Check 1 is checked");
                }
              else
                {
                  print("Check 1 is not checked");
                }
            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
