import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: TextStyle(color: Color(0xFF3E81B5)),
        ),
        GestureDetector(
          onTap: () {
            press();
          },
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              // 0xFF083D67
              color: Color(0xFF3E81B5),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
