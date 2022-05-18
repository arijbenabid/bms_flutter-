
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';

class Meeting  extends StatefulWidget {
  const Meeting ({Key? key}) : super(key: key);

  @override
  State<Meeting > createState() => _MeetingState();
}

class _MeetingState extends State<Meeting > {
  DateTime dateTime = DateTime.now();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double viewInset=MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Request meeting"),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: SingleChildScrollView(


          child: Form(
            key: formKey,
            child: Column(

              children: [
                Image.asset('assets/Complaint.png',  fit: BoxFit.fitWidth,),
                TextFormField(
                  decoration: InputDecoration(labelText: "Subject"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter the subject";
                    }
                  },
                ),
                // SizedBox(height: ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,

                  decoration: InputDecoration(labelText: "Text"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your complaint";
                    }
                  },
                ),
                SizedBox(height:20 ),
               Text("Pick a date for the meeting " , style: TextStyle(color: Colors.deepPurple),),
                SizedBox(height:12 ),

                buildDatePicker(),

                SizedBox(height:24 ),

               ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepPurple)),
                    child: Text("Send" , style: TextStyle(color: Colors.white),),
                    onPressed: (){

                    }),

              ],
            ),
          ),

        ),
      ),
    );
  }
  Widget buildDatePicker() => SizedBox(
    height: 50,
    child: CupertinoDatePicker(
      minimumYear: DateTime.now().year,


      initialDateTime : dateTime ,
      mode: CupertinoDatePickerMode.dateAndTime,
      onDateTimeChanged: (dateTime) {
        setState(() {
          this.dateTime= dateTime;
        });
      },
    ),
  );
  
}
