import 'package:flutter/material.dart';
import 'package:secondapp/BankAc.dart';

class ConfirmPin extends StatefulWidget {

  @override
  State<ConfirmPin> createState() => _ConfirmPinState();
}

class _ConfirmPinState extends State<ConfirmPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Pin"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(48.0),
              child: Text("Enter Code"),
            ),
            TextField(
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>BankAc())
                );
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
