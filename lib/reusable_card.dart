import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.mycolor, this.cardChild, this.onpress});
  final Color mycolor;
  final Widget? cardChild;
  final VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: mycolor,
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: cardChild,
      ),
    );
  }
}
