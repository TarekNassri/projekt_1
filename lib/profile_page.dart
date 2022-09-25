// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

void main() {
  runApp(profile_page());
}

class profile_page extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Challenge 01',
      home: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.grey[300],
          title: Center(
            child: Text('Profile Challenge 01',
              style: GoogleFonts.bebasNeue(
                  fontSize: 30,
                color:Colors.black

              ),
          ),
          ),
          iconTheme: IconThemeData(color: Colors.deepOrange),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children:  <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Text(
                  'Auswahl',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 30,
                    color: Colors.black
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              GestureDetector(
                onTap: (){


                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));

                },
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                ),

              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.grey.shade300, Colors.grey.shade300],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 0.9],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.deepOrange,
                        minRadius: 35.0,
                        child: Icon(
                          Icons.call,
                          size: 30.0,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.deepOrange,
                        minRadius: 60.0,
                        child: CircleAvatar(
                          radius: 50.0,

                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.deepOrange,
                        minRadius: 35.0,
                        child: Icon(
                          Icons.message,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),


                ],


              ),
            ),
          ],
        ),



      ),
    );
  }
}