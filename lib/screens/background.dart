import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Background extends StatefulWidget {
  const Background({Key? key}) : super(key: key);

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light ,
        child: GestureDetector(
          child: Stack(
            children: <Widget> [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffb388ff),
                      Color(0xff7e57c2),
                      Color(0xff673ab7),
                      Color(0xff512da8),
                      ]

                  ),
                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}
