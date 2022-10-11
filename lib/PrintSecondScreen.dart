import 'package:flutter/material.dart';
import 'package:secondapp/TextPrint.dart';
class PrintSecondScreen extends StatefulWidget {
  @override
  State<PrintSecondScreen> createState() => _PrintSecondScreenState();
}

class _PrintSecondScreenState extends State<PrintSecondScreen> {
  TextEditingController _fname = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _mobilenumber = TextEditingController();
  TextEditingController _english = TextEditingController();
  var txtfname="";
  var txtname="";
  var txtrollno="";
  var txteng="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Print"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name"),
                TextFormField(
                  controller: _name,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 50.0,),
                Text("Roll No"),
                TextFormField(
                  controller: _mobilenumber,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 50.0,),
                Text("English"),
                TextFormField(
                  controller: _english,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 30.0),
                GestureDetector(
                  onTap: (){

                      var nm = _name.text.toString();
                      var fnb = _fname.text.toString();
                      var mb = _mobilenumber.text.toString();
                      var eng = _english.text.toString();

                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>TextPrint(name: nm,fname: fnb,))
                      );
                  },
                  child: Text("Outline Button"),
                ),
                SizedBox(height: 50.0,),
                Container(
                  child: Card(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("FNAME : "+txtfname),
                            Text("NAME : "+txtname),
                            Text("ROLL NO : "+txtrollno),
                            Text("ENG : "+txteng),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
// OutlinedButton(
// onPressed: (){
//
//
//
//
// var nm = _name.text.toString();
//
//
// Navigator.of(context).push(
// MaterialPageRoute(builder: (context)=>SecondScreen(name: nm,salary: "100",))
// );
// }
// child: Center(child: Text("SUBMIT")),
// Text(name),
// Text(name),