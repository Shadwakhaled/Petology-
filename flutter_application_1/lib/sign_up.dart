import 'package:flutter/material.dart';

import '../responsive.dart';
import '../top_bar_contents.dart';
import "package:petology/font/costum_google_icon.dart";
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';



class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    String dropdownValue = 'One';
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar()
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: TopBarContents(),
            ),
      body: Center(
        child: Container(
          width: 700,
          margin: const EdgeInsets.all(30.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(30), // POINT
            ),
          ),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
               SizedBox(height: 30),

              ///////////////////////////////

              //   Column(
              //   children: [
              //Container(
              // padding:EdgeInsets.all(15),
              //  child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Container(
                    //color: Colors.blue,
                    width: screenSize.width / 5,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30), // POINT
                      ),
                    ),

                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, //background color of button
                        side: BorderSide(
                            width: 3,
                            
                            color: Colors.blue), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30)),
                       /// padding:
                          //  EdgeInsets.only(top), //content padding inside button
                      ),
                      onPressed: () {},
                      icon: new Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Facebook',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  ////////////////////////////////////////////////////////////////////////
                  SizedBox(width: 10),

                  Container(
                    //color: Colors.blue,
                    width: screenSize.width / 5,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30), // POINT
                      ),
                    ),

                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, //background color of button
                        side: BorderSide(
                            width: 3,
                            
                            color: Colors.black), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30)),
                       /// padding:
                          //  EdgeInsets.only(top), //content padding inside button
                      ),
                      onPressed: () {},
                      icon: new Icon(
                        MdiIcons.google,
                        color: Colors.black,
                      ),
                      label: Text(
                        'Google',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  ///////////////////////////////////
                ],
              ),
              Row(children: [
                Text('________________________________________________ or ________________________________________________'),
              ],),


             
            ],
          ),
        ),
      ),
    );
  }
}
