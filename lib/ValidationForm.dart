import 'package:flutter/material.dart';
class ValidationForm extends StatefulWidget {
  @override
  State<ValidationForm> createState() => _ValidationFormState();
}
class _ValidationFormState extends State<ValidationForm> {
  TextEditingController _name = TextEditingController();
  TextEditingController _mobilenumber = TextEditingController();
  TextEditingController _english = TextEditingController();
  TextEditingController _maths = TextEditingController();
  TextEditingController _science = TextEditingController();

  var formkey = GlobalKey<FormState>();

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
          child: Text("Validate"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name"),
                TextFormField(
                  controller: _name,
                  keyboardType: TextInputType.text,
                  validator: (val)
                    {
                      if(val.length<=0)
                        {
                          return "please Enter Name";
                        }
                      return null;
                    },
                ),
                SizedBox(height: 50.0,),
                Text("Roll No"),
                TextFormField(
                  controller: _mobilenumber,
                  keyboardType: TextInputType.phone,
                  validator: (val)
                    {
                      if(val.length<=0)
                        {
                          return "Please Enter Mobile Number";
                        }
                      return null;
                    },
                ),
                SizedBox(height: 50.0,),
                Text("English"),
                TextFormField(
                  controller: _english,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 50.0,),
                Text("Maths"),
                TextFormField(
                  controller: _maths,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 50.0,),
                Text("Science"),
                TextFormField(
                  controller: _science,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 30.0),
                ElevatedButton(
                onPressed: (){
                      {
                        var nm = _name.text.toString();
                        var mb = _mobilenumber.text.toString();
                        var eng = _english.text.toString();
                        var math = _maths.text.toString();
                        var sci = _science.text.toString();

                        var total = int.parse(eng) + int.parse(math) + int.parse(sci) ;
                        var percentage = total/3;

                        setState(() {
                          txtname=nm;
                          txtrollno=mb;
                          txteng=eng;
                          txtmath=math;
                          txtsci=sci;
                        });
                      }
                  },
                  child: Text("Submit"),
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
                            Text("NAME : "+txtname),
                            Text("ROLL NO : "+txtrollno),
                            Text("ENG : "+txteng),
                            Text("MATHS : "+txtmath),
                            Text("SCIENCE : "+txtsci),
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
      ),
    );
  }
}
