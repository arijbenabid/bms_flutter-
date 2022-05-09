import 'package:bms/models/user.dart';
import 'package:bms/utils/user_perferences.dart';
import 'package:bms/widget/profile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'navbar.dart';
 class ProfileWidget extends StatefulWidget {
   final String imagePath;
   final bool isEdit;
   final VoidCallback onClicked;

   const ProfileWidget({
     Key? key,
     required this.imagePath,
       this.isEdit = false,
     required this.onClicked,

 }): super (key:key);





   @override
   _EditProfilePageState createState() => _EditProfilePageState();
 }

 class _EditProfilePageState extends State<ProfileWidget> {
   User user= UserPreferences.myUser;
   @override
   Widget build(BuildContext context) => Scaffold(
   drawer: NavBar(),


   appBar: AppBar(
   actions: [
   IconButton( icon: Icon(CupertinoIcons.moon_stars ), onPressed: () {  },)
   ],
   // Here we take the value from the MyHomePage object that was created by
   // the App.build method, and use it to set our appbar title.

   ),

   body: ListView(
     padding: EdgeInsets.symmetric(horizontal: 32),
   physics: BouncingScrollPhysics(),
   children: [
   SizedBox(height:39),

   ProfileWidget(
   imagePath: user.imagePath,
   isEdit: true,
   onClicked:() async{},
   ),
     const SizedBox(height: 24),

     ],
   ),
   );



 }
