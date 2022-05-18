import 'dart:ui';

import 'package:bms/screens/interfaces/custom_swuitch.dart';
import 'package:bms/screens/interfaces/drawer.dart';
import 'package:bms/screens/interfaces/navbar.dart';
import 'package:bms/screens/interfaces/theme.dart';
import 'package:bms/screens/login.dart';
import 'package:bms/services/api.dart';
import 'package:bms/widget/%20change_theme_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(Container(child: MaterialApp( home: Login())));

}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
   builder:(context,_){
      final themeProvider = Provider.of<ThemeProvider>(context);
     return MaterialApp(
         title: 'Flutter Demo',
         themeMode: themeProvider.themeMode,
         theme: MyThemes.lightTheme,
         darkTheme: MyThemes.darkTheme,


         home:MyHomePage(title: 'My Home',)
         //MyHomePage(title: 'My Home Page',)
     );

   },
  ) ;

  }


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: NavBar(),


      appBar: AppBar(
        actions: [
       //   ChangeThemeButtonWidget(),
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
    //    child:        Transform.scale(scale: 2 ,
     //   child:ChangeThemeButtonWidget(), )

    ),
    );
  }
}
