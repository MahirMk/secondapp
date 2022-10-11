import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:secondapp/BankAc.dart';
import 'package:secondapp/ConfirmPIn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreatePin extends StatefulWidget {

  @override
  State<CreatePin> createState() => _CreatePinState();
}

class _CreatePinState extends State<CreatePin> {

  TextEditingController _code = TextEditingController();
  TextEditingController _confirmcode = TextEditingController();

  @override
  void initstate(){
    //  TODO: implement initstate
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Pin"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Text("Pin Code")
            ),
            TextField(
              controller: _code,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 50.0,),
            Text(" Confirm Pin Code"),
            TextField(
              controller: _confirmcode,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 50.0,),
           Container(
             color: Colors.black,
             width: 150,
             child: GestureDetector (
               onTap: () async{
                 var em = _code.text.toString();
                  var ps = _confirmcode.text.toString();

                 if(em==ps)
                 {

                   SharedPreferences prefs = await SharedPreferences.getInstance();
                   prefs.setString("pin",em);

                   Navigator.of(context).pop();
                   Navigator.of(context).push(
                       MaterialPageRoute(builder: (context)=>ConfirmPin())
                   );
                 }
                 else
                 {
                   Fluttertoast.showToast(
                       msg: "Something goes wrong",
                       toastLength: Toast.LENGTH_SHORT,
                       gravity: ToastGravity.CENTER,
                       timeInSecForIosWeb: 1,
                       backgroundColor: Colors.red,
                       textColor: Colors.white,
                       fontSize: 16.0
                   );
                 }
               },
               child: Center(child: Text("SUBMIT",style: TextStyle(fontSize: 30,color: Colors.white,),)),
             ),
           ),
          ],
        ),
      ),
    );
  }
}
