

import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'result_page.dart';



class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {



  @override
  Widget build(BuildContext context) {


    void updateColor(int gen){
      if(gen==1)
        {
          kMale_card_color = kActiveCardColor;
          kFemale_card_color = kInactiveCardColour;
        }
      else
        {
          kMale_card_color = kInactiveCardColour;
          kFemale_card_color = kActiveCardColor;
        }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),

      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                 Reusable_widget(
                    color: kMale_card_color,
                    chill: GestureDetector(
                      excludeFromSemantics: false,

                      onTap: (){
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: IconContent(
                        iconData: Icons.male,
                        text: "Male",
                      ),
                    ),
                  ),



                  Reusable_widget(
                      color: kFemale_card_color,
                      chill: GestureDetector(
                        onTap: (){
                          setState(() {
                            updateColor(2);
                          });
                        },
                        child: IconContent(
                            iconData: Icons.female,
                            text: "Female",
                          ),
                      ),
                  ),

              ],
            ),
          ),
          Reusable_widget(

              color: kActiveCardColor,
              chill: Column(
                children: [
                  Text(
                    "HEIGHT",
                    style: klabel_text,

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        style: knumber_text,
                        height.toString(),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),

                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 140.0,
                        max: 220.0,
                        overlayColor: MaterialStateProperty.resolveWith((states) {
                          return Color(0x29fd6404);
                        }),
                        onChanged: (double newValue){
                          setState(() {
                              height = newValue.round();
                          });
                        },
                      activeColor: Color(0xFFfd6404),

                    ),
                  )
                ],
              )
          ),

          
          Expanded(
            child: Row(
              children: [
                Reusable_widget(
                    color: kActiveCardColor,
                    chill: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                            "WEIGHT",
                          style: klabel_text,
                        ),
                        Text(
                          weight.toString(),
                          style: knumber_text,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              child: Icon(
                              FontAwesomeIcons.minus,
                                size: 30.0,
                                weight: 10000.0,
                              ),
                              backgroundColor: Color(0xFF87d1ac),

                              shape: CircleBorder(),
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            FloatingActionButton(
                              child: Icon(
                              Icons.add,
                                size: 40.0,
                                weight: 10000.0,
                              ),
                              backgroundColor: Color(0xFF87d1ac),

                              shape: CircleBorder(),
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    )
                ),
                Reusable_widget(
                    color: kActiveCardColor,
                    chill: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: klabel_text,
                        ),
                        Text(
                          age.toString(),
                          style: knumber_text,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 30.0,
                                weight: 10000.0,
                              ),
                              backgroundColor: Color(0xFF87d1ac),

                              shape: CircleBorder(),
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            FloatingActionButton(
                              child: Icon(
                                Icons.add,
                                size: 40.0,
                                weight: 10000.0,
                              ),
                              backgroundColor: Color(0xFF87d1ac),

                              shape: CircleBorder(),
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    )
                ),

              ],
            ),
          ),
          
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return Result_page();
                },)
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Center(child: Text("CALCULATE",style: klabel_text,)),
              color: Color(0xFFfd6404),
              width: double.infinity,
              height: 60.0,
            ),
          )
        ],
      ),


    );
  }
}




