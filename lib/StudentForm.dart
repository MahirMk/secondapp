import 'package:flutter/material.dart';
class StudentForm extends StatefulWidget {
  @override
  State<StudentForm> createState() => _StudentFormState();
}
class _StudentFormState extends State<StudentForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("StudentForm"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Add To Numbers",style: TextStyle(fontSize: 20.0,color: Colors.black),),
            SizedBox(height: 20.0,),
            TextField(

            )
          ],
        ),
      ),
    );
  }
}
