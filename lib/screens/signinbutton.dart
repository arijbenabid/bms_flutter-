




import 'package:flutter/material.dart';

import '../main.dart';



class Siginbutton extends StatelessWidget {
   Siginbutton({Key? key}) : super(key: key);


bool _isLoading = false ;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

    return Material(

      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: size.width *0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.deepPurpleAccent,
        ),
        padding: EdgeInsets.symmetric(vertical: 5),
        alignment: Alignment.center,
        child:MaterialButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp(),),);
          },

        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      ),
    );
  }
}






