import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';
class Contract extends StatefulWidget {
  const Contract({Key? key}) : super(key: key);

  @override
  State<Contract> createState() => _ContractState();
}

class _ContractState extends State<Contract> {
  DateTime dateTime = DateTime.now();
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
           child: buildDatePicker(),
        ),
      ),
    );
  }

  Widget buildDatePicker() => CupertinoDatePicker(
    initialDateTime : dateTime ,
    mode: CupertinoDatePickerMode.dateAndTime,
    onDateTimeChanged: (dateTime) {
      setState(() {
        this.dateTime= dateTime;
      });
    },
  );
}
