import 'package:bms/screens/interfaces/profile.dart';
import 'package:bms/screens/interfaces/settings.dart';
import 'package:flutter/material.dart';

import 'Contract.dart';
import 'chat.dart';
import 'complain.dart';
import 'contact.dart';
import 'meeting.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Ben Abid Arij', style: TextStyle(fontWeight: FontWeight.bold )),
            accountEmail: Text('benabidarij@gmail.com', style: TextStyle(fontWeight: FontWeight.bold ),),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/ARIJ.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),

                image: AssetImage(
                  'assets/residence.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
            ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.deepPurple,
            ),
            title: Text("Profile"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.deepPurple,
            ),
            title: Text("Settings"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Settings())),
          ),
          ListTile(
            leading: Icon(
              Icons.mail,
              color: Colors.deepPurple,
            ),
            title: Text("Contact us"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Contact())),
          ),
          ListTile(
            leading: Icon(
              Icons.people_rounded,
              color: Colors.deepPurple,
            ),
            title: Text("Request meeting"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Meeting())),
          ),
          ListTile(
            leading: Icon(
              Icons.comment,
              color: Colors.deepPurple,
            ),
            title: Text("Complain"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Complain())),
          ),
          ListTile(
            leading: Icon(Icons.chat, color: Colors.deepPurple,),
            title: Text("Chat",),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Chat())),

          ),
          ListTile(
            leading: Icon(
              Icons.contact_mail_sharp,
              color: Colors.deepPurple,
            ),
            title: Text("Contract"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Contract())),
          ),
          Divider(
            color: Colors.deepPurple,
            height: 30,
            thickness: 1,
            indent: 8,
            endIndent: 8,
          ),
          ListTile(
            leading: Icon(
              Icons.logout_sharp,
              color: Colors.deepPurple,
            ),
            title: Text("Logout"),
          ),
        ],
      ),
    );

  }
}