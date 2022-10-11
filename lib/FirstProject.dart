import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SecondProject.dart';
class FirstProject extends StatefulWidget {
  @override
  State<FirstProject> createState() => _FirstProjectState();
}
class _FirstProjectState extends State<FirstProject> {

  TextEditingController _txtemail = TextEditingController();
  TextEditingController _txtpass = TextEditingController();



  @override
  void initState(){
    // TODO: implement initState
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("First App")),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color(0xFFa3d6eb),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0,top: 20.0),
                child: Text("Email",style: TextStyle(color: Colors.black,fontSize: 30),),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  controller: _txtemail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'EMAIL',
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1,color: Colors.yellow),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0,top: 20.0),
                child: Text("Password",style: TextStyle(color: Colors.black,fontSize: 30),),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  controller: _txtpass,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'PASSWORD',
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1,color: Colors.yellow),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: ElevatedButton(
                      onPressed: () async{

                        var mail = _txtemail.text.toString();
                        var pwd = _txtpass.text.toString();
                        if(mail=='test@gmail.com' && pwd=='123456')
                          {
                            Fluttertoast.showToast(
                                msg: "Your Email Id And Password Correct",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.green,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );

                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setString("islogin", "yes");

                            Navigator.of(context).pop();
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context)=>SecondProject())
                            );
                          }
                        else
                          {
                            Fluttertoast.showToast(
                                msg: "Your Email Id And Password Incorrect",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );
                          }
                      },
                      child: Text("Login",style: TextStyle(color: Colors.red),),

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
