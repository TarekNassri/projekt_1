// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projekt_1/profile_page.dart';
import 'package:projekt_1/login_page.dart';
class RegisterPage extends StatefulWidget {


  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final email_Kontroller= TextEditingController();
  final password_Kontroller= TextEditingController();
  final wpassword_Kontroller= TextEditingController();
  final vornameKontroller= TextEditingController();
  final nachname_Kontroller= TextEditingController();
  final Strasse_Kontroller= TextEditingController();
  final PLZ_Kontroller= TextEditingController();
  final ORT_Kontroller= TextEditingController();


  bool checkTextFieldEmptyOrNot(){
    String text1,text2 ,text3,text4 ,text5 ,text6,text7,text8;
    // Getting Value From Text Field and Store into String Variable
    text1 = email_Kontroller.text ;
    text2 = password_Kontroller.text ;
    text3 = wpassword_Kontroller.text ;
    text4 = vornameKontroller.text ;
    text5 = nachname_Kontroller.text ;
    text6 = Strasse_Kontroller.text ;
    text7 = PLZ_Kontroller.text ;
    text8 = ORT_Kontroller.text ;



    // Checking all TextFields.
    if(text1 == '' || text2 == ''|| text3 == ''|| text4 == ''|| text5 == '')
    {// Put your code here which you want to execute when Text Field is Empty.
      return false;
    }else{
      // Put your code here, which you want to execute when Text Field is NOT Empty.
      return true;

    }

  }
  @override
  Widget build(BuildContext context) {
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


                Text("Welkommen "
                  ,style: GoogleFonts.bebasNeue(
                      fontSize: 60

                  ),
                ),
                SizedBox(height: 10,),
                Text("Konto erstellen"
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
                        controller: email_Kontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText :' Email'
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
                        controller: vornameKontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText :'Vorname'
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
                        controller: nachname_Kontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText :'Nachname'
                        ),
                      ),
                    ),
                  ),
                ),
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
                        controller: Strasse_Kontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText :'Stra??e'
                        ),
                      ),
                    ),
                  ),
                ),
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
                        controller: PLZ_Kontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText :'PLZ'
                        ),
                      ),
                    ),
                  ),
                ),
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
                        controller: ORT_Kontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText :'Ort'
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
                        controller: password_Kontroller,
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
                        controller: wpassword_Kontroller,
                        obscureText:true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText :' Password Wiederholen'
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
                      if (t==true&&password_Kontroller.text==wpassword_Kontroller.text) {
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
                          child: Text ('Registrieren',
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
      content: Text("Bitte f??llen sie alle felder aus"),
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
