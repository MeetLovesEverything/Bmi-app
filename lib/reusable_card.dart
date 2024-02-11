import 'package:flutter/material.dart';
import 'constants.dart';


class Reusable_widget extends StatelessWidget {

  Reusable_widget({required this.color,required this.chill});

  final Color color;
  final Widget chill;

  @override
  Widget build(BuildContext context) {

    return Expanded(
        child: Container(
          // width: width/2,
          margin: EdgeInsets.all(kMargin),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          alignment: Alignment.center,
          child: chill,
        )
    );
  }
}

