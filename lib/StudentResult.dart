import 'package:flutter/material.dart';

class StudentResult extends StatefulWidget {
  @override
  State<StudentResult> createState() => _StudentResultState();
}

class _StudentResultState extends State<StudentResult> {

  TextEditingController _name = TextEditingController();
  TextEditingController _mobilenumber = TextEditingController();
  TextEditingController _english = TextEditingController();
  TextEditingController _maths = TextEditingController();
  TextEditingController _science = TextEditingController();
  var txtname="";
  var txtrollno="";
  var txteng="";
  var txtmath="";
  var txtsci="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Student Result"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name"),
              TextField(
                controller: _name,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 50.0,),
              Text("Roll No"),
              TextField(
                controller: _mobilenumber,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 50.0,),
              Text("English"),
              TextField(
                controller: _english,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 50.0,),
              Text("Maths"),
              TextField(
                controller: _maths,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 50.0,),
              Text("Science"),
              TextField(
                controller: _science,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: (){
                  var nm = _name.text.toString();
                  var mb = _mobilenumber.text.toString();
                  var eng = _english.text.toString();
                  var math = _maths.text.toString();
                  var sci = _science.text.toString();

                  var total = int.parse(eng) + int.parse(math) + int.parse(sci) ;
                  var percentage = total/3;

                  setState(() {
                    txtname="nm";
                    txtrollno="mb";
                    txteng="eng";
                    txtmath="math";
                    txtsci="sci";
                  });
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
