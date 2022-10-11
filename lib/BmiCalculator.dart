import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}
TextEditingController _heightController = TextEditingController();
TextEditingController _weightController = TextEditingController();

double _result;
class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
         child: Text("BMI Calculator",style: TextStyle(fontSize: 30.0,color: Colors.black,backgroundColor: Colors.white),)
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.black,width: 8.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextField(
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
                controller: _heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      )
                  ),
                  labelText: "height in cm",
                  icon: Icon(Icons.trending_up,size: 40.0,color: Colors.blue,),
                ),
              ),
              SizedBox(height: 50),
              TextField(
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
                controller: _weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.green,
                    )
                  ),
                  labelText: 'Weight in kg',
                  icon: Icon(Icons.line_weight,size: 40,color: Colors.blue,),
                ),
              ),
              SizedBox(height: 75),
              RaisedButton(
                color: Colors.white,
                child: Text(
                  "Calculate",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: calculateBMI,
              ),
              SizedBox(height: 15),
              Text(
                _result == null ? "Enter Value" : "${_result.toStringAsFixed(2)}",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 49.4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  calculateBMI()
  {
    double height = double.parse(_heightController.text)/100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;
    _result = result;
    setState(() {});
  }
}
