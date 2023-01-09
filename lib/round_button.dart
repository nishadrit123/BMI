import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {

  const RoundButton({super.key, required this.myicon, required this.onpressed});
  final Widget myicon;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      elevation: 12.0,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: const Color(0xFF4C4F5E),
      child: myicon,
    );
  }
}