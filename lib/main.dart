import 'package:flutter/material.dart';
import 'Input_page.dart';

void main() => runApp(BMIapp());

class BMIapp extends StatelessWidget {
  const BMIapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF7dc496),
        primaryColor: Colors.green.shade300,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green.shade300,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.amber,

        )

        // colorScheme: ColorScheme(
        //   onPrimary: Colors.black,
        //   onSurface: Colors.white,
        //   brightness: Brightness.light,
        //   primary: Color(0xFF7dc496),
        //   secondary: Colors.black,
        //   onSecondary: Colors.white,
        //   error: Colors.red,
        //   onError: Colors.white,
        //   background: Color(0xFF7dc496),
        //   onBackground: Colors.black,
        //   surface: Colors.green.shade300,
        // )
      ),
      home: Inputpage(),
    );
  }
}



