import 'package:bms/screens/background.dart';
import 'package:bms/screens/forgotpassword.dart';
import 'package:bms/screens/inputmail.dart';
import 'package:bms/screens/inputpassword.dart';
import 'package:bms/screens/signinbutton.dart';
import 'package:flutter/material.dart';



class Login extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
double viewInset=MediaQuery.of(context).viewInsets.bottom;
double deffaultloginSize=size.height -(size.height*0.2);

    return (MaterialApp(
      home: Scaffold(

            body: Stack(
              children: [
                Background(),
                Align(
                  alignment: Alignment.center,
                  child:Container(
                    width: size.width,
                    height: deffaultloginSize,
                    child:  SingleChildScrollView(
                     
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Image.asset('assets/Untitled-2.png'),

                          Inputmail() ,

                         Inputpassword(),
                         SizedBox(height:12),
                         Siginbutton() ,
                          Forgotpassword() ,




                        ],
                      ),


                    ),
                  ),
                )
              ],
            ),

          )
    )

    );


  }
}
TextEditingController(){

}

