import 'package:flutter/material.dart';
class Forgotpassword extends StatelessWidget {
  const Forgotpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: () => print("ForgotPassword"),
        padding: EdgeInsets.only(),
        child: Text('Forgot Password?',
        style:TextStyle(
          color: Colors.yellow[800],
          fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline


        )
        )
      ),
    );
  }
}
