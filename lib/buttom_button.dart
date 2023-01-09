import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  const BottomButton({super.key, required this.textname, required this.ontap});
  final String textname;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: kbottomColor,
        height: kbottomContainerHeight,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(top: 23.0),
        child: Text(textname, style: const TextStyle(
            fontSize: 25.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
      ),
    );
  }
}