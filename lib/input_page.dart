import 'package:bmi/bmi_brain.dart';
import 'package:bmi/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'child_card.dart';
import 'constants.dart';
import 'round_button.dart';
import 'buttom_button.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;
  int height = 182, weight = 60, age = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                mycolor: selectedGender == Gender.male ? kactivecardColor : kinactivecardColor,
                cardChild: const ChildCard(icon: FontAwesomeIcons.mars, label: 'MALE'),
                onpress: (){
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
              )),
              Expanded(child: ReusableCard(
                mycolor: selectedGender == Gender.female ? kactivecardColor : kinactivecardColor,
                cardChild: const ChildCard(icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                onpress: (){
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
              )),
            ],
          )),
          Expanded(
              child: ReusableCard(
                  mycolor: kactivecardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Text('HEIGHT', textAlign: TextAlign.center ,style: TextStyle(fontSize: 20.0,),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(height.toString(), style: knumtextstyle,),
                        const Text('cm', style: TextStyle(fontSize: 18.0),)
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: kslideinactivecolor,
                        thumbColor: kslideactivecolor,
                        overlayColor: const Color(0x39EB1555),
                        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newval){
                          setState(() {
                            height = newval.round();
                          });
                        },
                        min: 120.0, max: 220.0,
                      ),
                    )
                  ],
                )
              )
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                mycolor: kactivecardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('WEIGHT', style: TextStyle(fontSize: 20.0),),
                    Text(weight.toString(), style: knumtextstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundButton(myicon: const Icon(FontAwesomeIcons.minus), onpressed: (){
                          setState(() {
                            weight--;
                          });
                        }),
                        const SizedBox(width: 20.0,),
                        RoundButton(myicon: const Icon(FontAwesomeIcons.plus), onpressed: (){
                          setState(() {
                            weight++;
                          });
                        },)
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: ReusableCard(
                      mycolor: kactivecardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('AGE', style: TextStyle(fontSize: 20.0),),
                        Text(age.toString(), style: knumtextstyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundButton(myicon: const Icon(FontAwesomeIcons.minus), onpressed: (){
                              setState(() {
                                age--;
                              });
                            }),
                            const SizedBox(width: 20.0,),
                            RoundButton(myicon: const Icon(FontAwesomeIcons.plus), onpressed: (){
                              setState(() {
                                age++;
                              });
                            }),
                          ],
                        )
                      ],
                    ),
                  ),

              ),
            ],
          )),
          BottomButton(textname: 'CALCULATE', ontap: (){
            BmiBrain calc = BmiBrain(height: height, weight: weight);
            Navigator.push(context, MaterialPageRoute(builder: (context) => Result(
                bmi: calc.calbmi(), reslt: calc.getResult(), intp: calc.getInterpretation())
            ));
            // Navigator.pushNamed(context, '/result');
          })
        ],
      ),
    );

  }
}
