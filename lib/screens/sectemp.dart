
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';



/*class Sectemp extends StatefulWidget {
  const Sectemp({Key? key}) : super(key: key);

  @override
  _SectempState createState() => _SectempState();
}

class _SectempState extends State<Sectemp> {

  late KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController=KFDrawerController(
        initialPage: ClassBuilder.fromString('Home'),
        items: [
          KFDrawerItem.initWithPage(
            text: Text("Home", style: TextStyle(color: Colors.white70, fontSize: 10),),
            icon: Icon(Icons.home , color: Colors.white,),
            page: Home(),
          )
        ]

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
        controller: _drawerController,
        header: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            width: MediaQuery.of(context).size.width *0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Arij", style: TextStyle(fontSize: 17 , color: Colors.white),),
              SizedBox(height: 2),
                Text("Ingenieur", style: TextStyle(fontSize: 15, color:Colors.grey),),
              ],
            ),
          ),
        ),
        footer: KFDrawerItem(
          text: Text("Logout", style: TextStyle(color: Colors.white, fontSize: 18),),
        ),
        decoration: BoxDecoration(
          color: Color.fromRGBO(221, 160, 221, 1.0)
        ),
      ),
    );
  }
}*/





class Sectemp extends StatelessWidget {
  const Sectemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      DefaultTabController(length: 1,
        child:
        Scaffold(
          appBar: AppBar(
            title: Text("BMS"),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Drawer(child: ListView( children: [
                DrawerHeader(child: Container(
                margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(0),

                    child : Container(

                    padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/residence.jpg'),


                fit: BoxFit.fill),

                ),
                      child: Column(children: [

                        Container(
                          height: 90,
                          width: 90,
                          child: CircleAvatar(

                            backgroundImage: AssetImage("assets/ARIJ.png"),
                            // child:   Positioned.fill(
                            //      filter: ImageFilter.blur(sigmaX: 10 , sigmaY: 10),
                            //      child: Container(color: Colors.black.withOpacity(0.2),),
                            //    )

                          ),

                        ),
                        Text("Arij",style: TextStyle(color: Colors.black,fontSize: 20),)

                      ], ),
                    ),
                ),
                ),
                ],
                )
                );


              },
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.purple],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,

                  )
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text:'Home')
              ],
            ),
            backgroundColor: Colors.deepPurple,
            elevation: 20,
            titleSpacing: 0,




          ),


          body: Container(

          ),
        ),
      );
}


