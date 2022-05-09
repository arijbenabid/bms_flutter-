import 'package:bms/screens/signinbutton.dart';
import 'package:flutter/material.dart';
late final String? Function(String?)? validator ;

class Inputpassword extends StatefulWidget {

  @override
  _InputpasswordState createState() => _InputpasswordState();
}

class _InputpasswordState extends State<Inputpassword> {
   bool _isObscure = true;
   final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

    return   Container(
      margin: EdgeInsets.symmetric(vertical:10),
      padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 5) ,
      width: size.width*0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.deepPurpleAccent.withAlpha(50)
      ),
      child:  TextFormField(
        controller: _passwordController,
        validator:(value){
          if (value== null || value.isEmpty){
            return 'password field is required';
          }
        },

        cursorColor: Colors.deepPurpleAccent[100],
        obscureText: _isObscure ,
        style: TextStyle(
            color: Colors.deepPurpleAccent[100]
        ),
        decoration: InputDecoration(
            icon: Icon(Icons.lock, color: Colors.deepPurpleAccent[100]),
            hintText: 'Password',
            border: InputBorder.none,

          hintStyle: TextStyle(
              color: Colors.deepPurpleAccent[100]

          ),

            suffixIcon: IconButton(
    icon: Icon(
    _isObscure ? Icons.visibility : Icons.visibility_off,
    ),

    onPressed: () {
      setState(() {
        _isObscure = !_isObscure;
      });
    }
            ),


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


