import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';

class Complain extends StatefulWidget {
  const Complain({Key? key}) : super(key: key);

  @override
  State<Complain> createState() => _ComplainState();
}

class _ComplainState extends State<Complain> {
 DateTime  dateTime = DateTime.now() ;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double viewInset=MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
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
              Image.asset('assets/Complaint.png'),
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
              SizedBox(height:12 ),


              RaisedButton(
                  child: Text("Send", style: TextStyle(color: Colors.white)),
                  color: Colors.deepPurple,
                  onPressed: (){}),
            ],
          ),
        ),
      ),
      ),
    );
  }

}

