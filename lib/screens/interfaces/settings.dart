import 'package:bms/widget/%20change_theme_button_widget.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'custom_swuitch.dart';
import 'navbar.dart';
class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
   String dropdownValue ="english";

   var items =  ['english' , 'العربية' ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),


      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

      ),
      body: ListView(
          children: [
            ListTile(
              title: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Change mode ', style: TextStyle(fontSize: 19),),

                    ChangeThemeButtonWidget(),
                  ]
              ),

            ),
            ListTile(
              title: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Change Language', style: TextStyle(fontSize: 19),),



    DropdownButton(
      items: items.map((itemsname) {
              return DropdownMenuItem(
                   value:itemsname,
                      child: Text(itemsname)
                                          );
      }).toList(),
      onChanged: (String? newValue){
         setState((){
      dropdownValue = newValue! ;
          });
      },
      value: dropdownValue,
),







    /*<String>(
                       icon: Icon(Icons.arrow_drop_down,color: Colors.deepPurple),
                   items: items.map(buildMenuItem).toList(),
                     value : dropdownValue,
                     onChanged: (String? newValue){
                         setState((){
                           dropdownValue = newValue ! ;

                         });
                     },
                     items : <String>['english' , 'arabe' ].map<DropdownMenuItem<String>>((String value){
                       return DropdownMenuItem <String>(
                         value: value,
                         child: Text(value),
                       );

                     }).toList(),
                         //setState (()=>this.value = value ) ,
                     ),*/
                  ]
              ),

            ),
          ]
      ),
    );

  }

   DropdownMenuItem<String> buildMenuItem(String item )=>
       DropdownMenuItem(value: item , child:  Text(item ,
       style:  TextStyle(fontSize: 14),),);
}




      /* Container(
        child:
          ListTile(
            title: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Change mode ', style:TextStyle(fontSize: 19),),

                  ChangeThemeButtonWidget(),

                ],
              ),
            ),

        ),*/



       /* child:
        SingleChildScrollView(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Mode"),
            //     Text("Mode"),*/
         // ],
        //),);
       /* Center(
          child: CustomSwitch()
        ),*/
  /*    ),
    );*/
  //}
//}
