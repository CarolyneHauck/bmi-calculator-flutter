import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/material.dart';

class BottomButtom extends StatelessWidget {
  BottomButtom({@required this.text, @required this.onTap});

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: largeButtonTextStyle,
          ),
        ),
        color: bottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
