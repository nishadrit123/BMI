import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'buttom_button.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.bmi, required this.reslt, required this.intp,});
  final String bmi, reslt, intp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            padding: const EdgeInsets.only(left: 20.0, top: 40.0),
            child: const Text(
              'Your Result',
              style: kresultstyle,
            ),
          )),
          Expanded(flex: 5, child: ReusableCard(
            mycolor: kactivecardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(reslt, style: k1ststyle,),
                Text(bmi, style: kbmitextstyle,),
                Text(intp, style: const TextStyle(fontSize: 20.0), textAlign: TextAlign.center,)
              ],
            ),
          )),
          BottomButton(textname: 'RE-CALCULATE', ontap: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
