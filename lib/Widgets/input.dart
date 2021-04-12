import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum TypeInput { password, text }

// ignore: must_be_immutable
class Input extends StatelessWidget {
  Input({this.label, this.messageError, this.type, this.prefix, this.size});

  final String label;
  TypeInput type = TypeInput.text;
  final String messageError;
  final IconData prefix;
  final int size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
      child: TextField(
        scrollPadding: EdgeInsets.fromLTRB(0, 21, 0, 0),
        style: TextStyle(
            height: 1.5,
            color: Colors.orangeAccent.shade100,
            fontSize: this.size ?? 14),
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.deepOrange,
            ),
          ),
          border: UnderlineInputBorder(),
          prefixIcon: this.prefix != null
              ? Icon(
                  this.prefix,
                  color: Colors.white,
                )
              : null,
          errorText: messageError,
          labelText: label,
          labelStyle: TextStyle(fontFamily: 'consolas', color: Colors.white),
        ),
        obscureText: type == TypeInput.password,
      ),
    );
  }
}
