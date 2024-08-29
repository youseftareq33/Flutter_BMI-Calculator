import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {

  double height;
  double weight;

  ResultPage({super.key, required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    
    double bmi_res=weight/pow(height/100, 2);
    String bmi_state="";
    switch(bmi_res){
      case<16:
        bmi_state="Severe Thinness";
        break;

      case>18.5 && <25:
        bmi_state="Normal";
        break;

      case>25 && <30:
        bmi_state="Overweight";
        break;

      case>30:
        bmi_state="Obese";
        break;

      default:      
    }

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Result is: "+"${bmi_res.toStringAsFixed(2)}"),
            Text("$bmi_state"),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
