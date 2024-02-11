

import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'Input_page.dart';

class Result_page extends StatelessWidget {
  double _answer = (weight.toDouble()/(height.toDouble()*height.toDouble()))*10000;
  String _query = "Healhy";
  String message = "Looking good my G, keep PUMPING IRON.";

  @override
  Widget build(BuildContext context) {
    if(_answer<=18.4)
      {
        _query = "UnderWeight";
        message = "Time to BULKKKKK";
      }
    else if(_answer<=24.9)
      {
        _query = "Healthy";
      }
    else if(_answer <= 29.9)
      {
        _query = "Overweight";
        message = "YOU TOOK THE BULK TOO FAR";
      }
    else
      {
        _query = "Morbidly Obese";
        message = "To be Continued...";
      }
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [

          Expanded(
            flex: 1,
              child: Container(
                color: Color(0xFF7dc496),
                child: Text(
                  "Your Result",
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Color(kIcon_color),
                  ),
                ),
              )
          ),
          Expanded(
              flex: 5,
              child:Reusable_widget(
                color: kActiveCardColor,
                chill: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      _query,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.green[800],

                      ),
                    ),
                    Text(
                        _answer.toString().substring(0,5),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 100.0,

                      ),
                    ),
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),


                  ],
                ),
              )
          ),
          Container(
            width: double.infinity,
            height: 60.0,
            child: Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },

                child: Text(
                  "RE-CALCULATE",

                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            color: Color(0xFFfd6404),
          )
        ],
      ),
    );
  }
}
