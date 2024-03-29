import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff0a0e21),
        ),
        scaffoldBackgroundColor: const Color(0xff0a0e21),
      ),
      home: const InputPage(),
      // routes: {
      //   '/result': (context) => Result(
      //     bmi: bb.calbmi(),
      //     reslt: bb.getResult(),
      //     intp: bb.getInterpretation(),
      //   ),
      // },
    );
  }
}


