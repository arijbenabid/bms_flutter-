import 'package:bms/controllers/auth_controller.dart';
import 'package:bms/screens/interfaces/Contract.dart';
import 'package:bms/screens/interfaces/chat.dart';
import 'package:bms/screens/interfaces/complain.dart';
import 'package:bms/screens/interfaces/contact.dart';
import 'package:bms/screens/interfaces/meeting.dart';
import 'package:bms/screens/interfaces/profile.dart';
import 'package:bms/screens/interfaces/settings.dart';
import 'package:bms/screens/interfaces/theme.dart';
import 'package:bms/widget/%20change_theme_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyHome extends StatefulWidget {
   MyHome({Key? key, required this.title}) : super(key: key);
 final authController = Get.put(AuthController());


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHome> createState() => _MyHomeState();
}



class _MyHomeState extends State<MyHome> {
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
    double w = MediaQuery.of(context).size.width ;
    double h = MediaQuery.of(context).size.height ;

    return Scaffold(
      drawer: Drawer(child: ListView( children: [
        DrawerHeader(child: Container(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),
           width: w,
          height: h*0.3,
          child : Container(

            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              image: DecorationImage(
                  // colorFilter: ColorFilter.mode(Colors.deepPurple.shade400,BlendMode.hardLight)  ,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                //colorFilter: ColorFilter.srgbToLinearGamma(),
               // colorFilter: ColorFilter.linearToSrgbGamma(),

                fit: BoxFit.cover,
                  image: AssetImage('assets/residence.jpg'),


                  ),

            ),



            child: Column(children: [

              Container(
            alignment: Alignment.topCenter,

                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage("assets/ARIJ.png"),


                  // child:   Positioned.fill(
                  //      filter: ImageFilter.blur(sigmaX: 10 , sigmaY: 10),
                  //      child: Container(color: Colors.black.withOpacity(0.2),),
                  //    )

                ),

              ),
              Text("Arij",style: TextStyle(color: Colors.deepPurple.shade900,fontSize: 20),)

            ], ),
          ),
        ),
        ),
        ListTile(
          leading: Icon(Icons.person , color: Colors.deepPurple,),
          title: Text("Profile"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),),);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings , color: Colors.deepPurple,),
          title: Text("settings"),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Settings())),
        ),
        ListTile(
          leading: Icon(Icons.mail, color: Colors.deepPurple,),
          title: Text("Contact us"),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Contact())),

        ),

        ListTile(
          leading: Icon(Icons.people_rounded, color: Colors.deepPurple,),
          title: Text("Request meeting"),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Meeting())),

        ),
        ListTile(
          leading: Icon(Icons.comment, color: Colors.deepPurple,),
          title: Text("Complain",),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Complain())),

        ),

        ListTile(
          leading: Icon(Icons.contact_mail_sharp, color: Colors.deepPurple,),
          title: Text("Contract"),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Contract())),

        ),
        Divider(color : Colors.deepPurple ,height: 90,thickness: 1,indent: 8, endIndent: 8,
           ),

        ListTile(
          leading: Icon(Icons.logout_sharp, color: Colors.deepPurple,),
          title: Text("Logout"),
        ),
      ],), ),
      appBar: AppBar(
actions: [
 // ChangeThemeButtonWidget(),
],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}