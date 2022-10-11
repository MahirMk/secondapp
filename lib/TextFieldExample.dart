import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {

  TextEditingController _name = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _email = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name"),
              TextField(
                controller: _name,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20.0,),
              Text("Mobile Number"),
              TextField(
                controller: _mobile,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 20.0,),
              Text("Email"),
              TextField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20.0,),
              Text("Age"),
              TextField(
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20.0,),
              Text("Password"),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: (){
                  var nm = _name.text.toString();
                  var mb = _mobile.text.toString();

                  print("Name : "+nm);
                  print("Mobile : "+mb);
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
