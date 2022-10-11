import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {
  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Button Example",style: TextStyle( fontStyle: FontStyle.italic,fontSize: 25.0,),),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.black,
        shape: BeveledRectangleBorder(
        ),
        child: Container(
          child: Icon(Icons.add_a_photo, size: 40.0,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 300.0,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    primary: Colors.red
                ),
                child: Text("Elevated Button"),
              ),
            ),
            OutlinedButton(
              onPressed: (){},
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.white,
                        Colors.red,
                      ],
                    ),
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(color: Colors.green,width: 10.0),
                ),
                child: Text("Outline Button"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
