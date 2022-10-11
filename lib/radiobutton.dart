import 'package:flutter/material.dart';

class radiobutton extends StatefulWidget {
  @override
  State<radiobutton> createState() => _radiobuttonState();
}
class _radiobuttonState extends State<radiobutton> {

  var grpvalue="M";

  _handleRadio(val)
  {
    setState(() {
      grpvalue=val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Radio Button"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Male"),
            Radio(
              groupValue: grpvalue,
              value: "M",
              onChanged:  _handleRadio,
            ),
            Text("Female"),
            Radio(
              groupValue: grpvalue,
              value: "F",
              onChanged:  _handleRadio
            ),
            ElevatedButton(
              onPressed: (){},
            child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
