
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projekt_1/RegisterPage.dart';


class LoginPage extends StatefulWidget {

  const LoginPage ({ Key ? key}):super (key:key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage>{


  final email_kontroller= TextEditingController();
  final password_kontroller= TextEditingController();
  bool checkTextFieldEmptyOrNot(){
    String text1,text2 ;
    // Getting Value From Text Field and Store into String Variable
    text1 = email_kontroller.text ;
    text2 = password_kontroller.text ;


    // Checking all TextFields.
    if(text1 == '' || text2 == '')
    {// Put your code here which you want to execute when Text Field is Empty.
    return false;
    }else{
      // Put your code here, which you want to execute when Text Field is NOT Empty.
      return true;

    }

  }


  @override
Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // ignore: prefer_const_literals_to_create_immutables
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.restaurant,
                size:100,
                ),
              //Hello Again
              // ignore: prefer_const_constructors
              SizedBox(height: 25,), 


              Text("Herzlich Willkommen "
              ,style: GoogleFonts.bebasNeue(
                  fontSize: 60

                ),
              ),
              SizedBox(height: 10,),
              Text("Wir haben dich vermisst!"
                ,style: GoogleFonts.bebasNeue(
                  fontSize: 25
                ),
              ),
              SizedBox(height: 100,),
              //email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                        border:Border.all(color:Colors.white),
                      borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: email_kontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                            hintText :' Email',

                      ),
                    ),
                  ),
                ),
              ),
              //password Textfield
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Container(

                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border:Border.all(color:Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: password_kontroller,
                      obscureText:true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText :' Password'
                      ),
                    ),
                  ),
                ),
              ),
              // sign in button
              SizedBox(height: 10,),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: GestureDetector(
                 onTap: (){
                   bool t  = checkTextFieldEmptyOrNot();
                    if (t==true) {
                    Navigator.of(context).pushNamed('/profilePage');
                   }else {
                     showAlertDialog(context);
                   }
                   },
                 child: Container(
                   padding: EdgeInsets.all(25),
                   decoration: BoxDecoration(
                       color: Colors.deepOrange,
                       borderRadius:BorderRadius.circular(12),
                 ),
                   child: Center (
                     child: Text ('Anmelden',
                     style: TextStyle(color: Colors.white,
                     fontWeight:FontWeight.bold,
                       fontSize: 18,


                     ),


                     ),


                   )

                 ),
               ),
             ),

               SizedBox(height: 10,),

              // not  a member?? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Nicht registriert? ,",
                      style: TextStyle(
                        fontWeight:FontWeight.bold,

                      )

                  ),
                  GestureDetector(
                    onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                    },
                    child: Text("Dann registriere dich jetzt ",
                      style: TextStyle(
                      fontWeight:FontWeight.bold,
                        color: Colors.blue

                    )),
                  )
                ],
              )
            ],),
          ),
        ),
      ),
    );

  }

  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed:  () {

      },
    );


    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Achtung"),
      content: Text("Bitte füllen sie alle felder aus"),
      actions: [
        cancelButton,

      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}