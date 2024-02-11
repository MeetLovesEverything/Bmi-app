import 'package:flutter/material.dart';
import 'constants.dart';


class IconContent extends StatelessWidget {

  IconContent({super.key,required this.iconData,required this.text});

  final IconData iconData;
  final String text;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width/2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: kIcon_size,
            color: Color(kIcon_color),
          ),
          SizedBox(
            height: kSpace_bw_iconNtext,
          ),
          Text(
            text,
            style: klabel_text,
          )
        ],
      ),
    );
  }
}