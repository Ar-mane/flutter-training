import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  final onPress = () => {log('cliic')};

  final TextStyle textStyle = TextStyle();

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Colors.grey.shade900,
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      shadowColor: Colors.amber,
      textStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ));
  Button({this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: ElevatedButton(
        style: raisedButtonStyle,
        child: Text(this.label),
        onPressed: onPress,
      ),
      padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
    );
  }
}
