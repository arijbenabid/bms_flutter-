import 'package:bms/models/user.dart';
import 'package:bms/screens/interfaces/settings.dart';
import 'package:bms/utils/user_perferences.dart';
import 'package:bms/widget/profile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Contract.dart';
import 'complain.dart';
import 'contact.dart';
import 'meeting.dart';
import 'navbar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      drawer: NavBar(),


      appBar: AppBar(
        actions: [
          IconButton( icon: Icon(CupertinoIcons.moon_stars ), onPressed: () {  },)
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

      ),

      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height:39),

          ProfileWidget(
            imagePath: user.imagePath,
            onClicked:() async{},

          ),
          SizedBox(height:24),
          buildName(user),
          SizedBox(height:24),



        ],


      ),
    );

  }
  Widget buildName(User user) => Column(
    children: [
      Text(user.name,
      style: TextStyle(fontWeight:  FontWeight.bold, fontSize:24 ),
      ),
      const SizedBox(height: 4),

      Text(
        user.email,
        style: TextStyle(color : Colors.grey),
      ),
      Divider(color : Colors.deepPurple ,height:40,thickness: 1,indent:60, endIndent: 60,
      ),

      ListTile(
        leading: Icon(Icons.apartment, color: Colors.deepPurple,),
        title: Text("Building Name :"),
       subtitle: Text( user.Building , style: TextStyle( fontSize:20,color: Colors.deepPurple.shade300 )),
          minLeadingWidth: 110 ,

      ),
      ListTile(
        leading: Icon(Icons.stairs_outlined, color: Colors.deepPurple,),
        title: Text("Floor Number :"),
        subtitle: Text( user.Floor, style: TextStyle( fontSize:20,color: Colors.deepPurple.shade300 )),
        minLeadingWidth: 110 ,
      ),
      ListTile(
        leading: Icon(Icons.door_back_door_sharp, color: Colors.deepPurple,),
        title: Text("Unit Number :"),
        subtitle: Text( user.Unit , style: TextStyle( fontSize:20 , color: Colors.deepPurple.shade300
        ) ),
        minLeadingWidth: 110 ,

      ),




    ],
  );

}