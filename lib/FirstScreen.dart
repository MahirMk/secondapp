import 'package:flutter/material.dart';
import 'package:secondapp/SecondScreen.dart';

import 'DialerScreen.dart';

class FirstScreen extends StatefulWidget {

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController _heading = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _rollno = TextEditingController();
  TextEditingController _english = TextEditingController();
  TextEditingController _maths = TextEditingController();
  TextEditingController _science = TextEditingController();


  var txtheading="";
  var txtname="";
  var txtrollno="";
  var txteng="";
  var txtmath="";
  var txtsci="";

  var _radio="Male";

  var ch1=false;

  var select="1";

  _handleRadio(val)
  {
    setState(() {
      _radio=val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("First Page"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(txtheading),
                Text("Heading"),
                TextField(
                  controller: _heading,
                  keyboardType: TextInputType.text,
                ),
                Text(txtname),
                Text("Name"),
                TextField(
                  controller: _name,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 20.0,),
                Text(txtrollno),
                Text("Roll No."),
                TextField(
                  controller: _rollno,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 20.0,),
                Text(txteng),
                Text("English"),
                TextField(
                  controller: _english,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20.0,),
                Text(txteng),
                Text("Maths"),
                TextField(
                  controller: _maths,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20.0,),
                Text(txteng),
                Text("Science"),
                TextField(
                  controller: _science,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20.0,),
                Text("Male"),
                Radio(
                  groupValue: _radio,
                  value: "Male",
                  onChanged:  _handleRadio,
                ),
                SizedBox(height: 20.0,),
                Text("Female"),
                Radio(
                    groupValue: _radio,
                    value: "Female",
                    onChanged:  _handleRadio
                ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Standard"),
                  DropdownButton(
                    value: select,
                    onChanged: (val)
                    {
                      setState(() {
                        select=val;
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        child: Text("1"),
                        value: "1",
                      ),
                      DropdownMenuItem(
                        child: Text("2"),
                        value: "2",
                      ),
                      DropdownMenuItem(
                        child: Text("3"),
                        value: "3",
                      ),
                      DropdownMenuItem(
                        child: Text("4"),
                        value: "4",
                      ),
                      DropdownMenuItem(
                        child: Text("5"),
                        value: "5",
                      ),
                      DropdownMenuItem(
                        child: Text("6"),
                        value: "6",
                      ),
                      DropdownMenuItem(
                        child: Text("7"),
                        value: "7",
                      ),
                      DropdownMenuItem(
                        child: Text("8"),
                        value: "8",
                      ),
                      DropdownMenuItem(
                        child: Text("9"),
                        value: "9",
                      ),
                      DropdownMenuItem(
                        child: Text("10"),
                        value: "10",
                      ),
                    ],
                  ),

                ],
              ),
                SizedBox(height: 50.0,),
                Row(
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
                    Text("I Agree"),
                  ],
                ),

                SizedBox(height: 50.0,),
              GestureDetector(
              onTap: (){
                var hd = _heading.text.toString();
                var nm = _name.text.toString();
                var rn = _rollno.text.toString();
                var eng = _english.text.toString();
                var math = _maths.text.toString();
                var sci = _science.text.toString();

                var rdo = _radio.toString();

                var drop = select.toString();

                if(ch1==true)
                {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>SecondScreen(
                      heading: hd,
                      name: nm,
                      rollno: rn,
                      english: eng,
                      maths: math,
                      science: sci,

                      radios: rdo,

                        dropdown:drop,
                    ),

                    ),
                  );
                }
                else
                  {
                    print("error");
                  }
              },

              child: Container(
                width: 140.0,
                  // width: MediaQuery.of(context).size.width * 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  border: Border.all(color: Colors.deepOrangeAccent,width: 2.0)
                ),
                  child: Center(child: Text("SUBMIT",style: TextStyle(color: Colors.black,fontSize: 30.0,),),)
              ),
              ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

