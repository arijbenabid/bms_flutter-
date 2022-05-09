import 'package:flutter/material.dart';

import 'custom_swuitch.dart';
import 'navbar.dart';
class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),


      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

      ),
      body: Container(
       /* child:
        SingleChildScrollView(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Mode"),
            //     Text("Mode"),*/
            child: CustomSwitch()
         // ],
        ),);
       /* Center(
          child: CustomSwitch()
        ),*/
  /*    ),
    );*/
  }
}
