import 'package:first_app/Widgets/button.dart';
import 'package:flutter/material.dart';

import '../Widgets/input.dart';

class Login extends StatelessWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;
  final TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: Container(
      padding: EdgeInsets.fromLTRB(40, 50, 40, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderText(
            text: "Log In",
          ),
          Padding(padding: EdgeInsets.all(35)),
          Input(label: "Username", prefix: Icons.person),
          Input(label: "Secret", prefix: Icons.lock, type: TypeInput.password),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Text(
              'oooh bad thing hapened',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.pink.shade500),
            ),
          ),
          SizedBox(
              width: double.infinity,
              child: Container(
                  height: 65,
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Button(label: 'Log in')))
        ],
      ),
      color: Colors.grey.shade700,
    ));
  }
}

class HeaderText extends StatelessWidget {
  HeaderText({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          color: Colors.white, fontSize: 35, fontWeight: FontWeight.w700),
    );
  }
}
