import 'package:flutter/material.dart';

import 'navbar.dart';
class Contract extends StatelessWidget {
  const Contract({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),


      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

      ),
      body: Container(
        child: Center(
          child: Text("Contract Page"),
        ),
      ),
    );
  }
}
