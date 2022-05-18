import 'package:bms/screens/interfaces/theme.dart';
import 'package:bms/widget/%20change_theme_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState(
  );


}

class _CustomSwitchState extends State<CustomSwitch> {

  double switchWidth = 60.0;
  double switchHeight = 25.0;
  Duration animationDuration = Duration(milliseconds: 600);
  Duration animationDurationThumb = Duration(milliseconds: 300);

  ThemeMode themeMode = ThemeMode.dark;


  bool is_night = true;

  void _onTapSwitch() {
    setState(() {
      is_night = !is_night;
     if (is_night){
       themeMode = ThemeMode.dark ;
     }else {
       themeMode = ThemeMode.light;

     }

    });
  }

  @override
  Widget build(BuildContext context) {



    return MaterialApp(



      home: Scaffold(
        body:
/*
      Center(
        child:*/
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: _onTapSwitch,
              child: Container(
                width: switchWidth,
                height: switchHeight,
                child: Stack(
                  children: [
                    //night background
                    AnimatedPositioned(
                      duration: animationDuration,
                      width: is_night ? switchWidth : 0,
                      top: 0,
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: switchWidth,
                        height: switchHeight,
                        child: Ink.image(
                          image: AssetImage('assets/backgroundnight.jpg'),
                          fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(),
                      ),
                    ),
                    //moon
                    AnimatedPositioned(
                      duration: animationDuration,
                      top: 0,
                      bottom: 0,
                      left: is_night ? 0 : (switchWidth - switchHeight),
                      child: AnimatedOpacity(
                        opacity: is_night ? 1 : 0,
                        duration: animationDurationThumb,
                        child: Container(
                          child: Image.asset('assets/moon.png'),
                        ),
                      ),
                    ),

                    // day Background
                    AnimatedPositioned(
                      duration: animationDuration,
                      width: is_night ? 0 : switchWidth,
                      top: 0,
                      bottom: 0,
                      left: 0,
                      child: Container(
                        width: switchWidth,
                        height: switchHeight,
                        child: Ink.image(
                          image: AssetImage('assets/daybackground.jpg'),
                          fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: animationDuration,
                      top: 0,
                      bottom: 0,
                      left: is_night ? 0 : (switchWidth - switchHeight),
                      child: AnimatedOpacity(
                        opacity: is_night ? 0 : 1,
                        duration: animationDurationThumb,
                        child: Container(
                          child: Image.asset('assets/sun.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // ),
      ),
    );
  }




  }

