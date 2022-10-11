import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:secondapp/FlutterToastDemo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FlutterToastExample extends StatefulWidget {
  @override
  State<FlutterToastExample> createState() => _FlutterToastExampleState();
}

class _FlutterToastExampleState extends State<FlutterToastExample> {

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override

  void initstate(){
  //  TODO: implement initstate
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("FaceBook",style: TextStyle(color: Colors.blue,fontSize: 30),),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Icon(Icons.search,color: Colors.blue,size: 30.0,),
                    ),
                    Icon(Icons.message,color: Colors.blue,size: 30.0, ),
                  ],
                ),
              ],
            ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(58.0),
          child: Column(
            children: [
              Text("Email",style: TextStyle(fontSize: 30.0),),
              SizedBox(height: 50.0,),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: TextField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 50.0,),
              Text("Password",style: TextStyle(fontSize: 30.0),),
              SizedBox(height: 50.0,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: TextField(
                  controller: _password,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
              ),
              SizedBox(height: 50.0,),
              Container(
                child: GestureDetector(
                  onTap: () async{

                    var em = _email.text.toString();
                    var ps = _password.text.toString();

                    if(em=='mahir@gmail.com' && ps=='mahir123')
                    {
                      Fluttertoast.showToast(
                          msg: "Your Email And Password is correct",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );

                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setString("islogin", "yes");

                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>FlutterToastDemo())
                      );
                    }
                    else
                      {
                        Fluttertoast.showToast(
                            msg: "Your Email And Password is Incorrect",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      }
                  },
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                    ),
                      child: Center(child: Text("Login",style: TextStyle(fontSize: 30.0),))
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
