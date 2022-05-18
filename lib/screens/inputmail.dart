import 'package:bms/screens/signinbutton.dart';
import 'package:flutter/material.dart';

late final String? Function(String?)? validator;
final _emailController = TextEditingController();
bool _isLoading = false;

class Inputmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.deepPurpleAccent.withAlpha(50)),
      child: TextFormField(
        controller: _emailController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'email field is required';
          }
        },
        keyboardType: TextInputType.emailAddress,
        cursorColor: Colors.deepPurpleAccent[100],
        style: TextStyle(color: Colors.deepPurpleAccent[100]),
        decoration: InputDecoration(
          icon: Icon(Icons.email, color: Colors.deepPurpleAccent[100]),
          hintText: 'Username',
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.deepPurpleAccent[100]),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
