import 'package:flutter/material.dart';
import 'UI/fam_bal.dart';
import 'UI/home.dart';


void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      textTheme: TextTheme(
        bodyText1: TextStyle(
          fontFamily: 'SpaceGrotesk',color: Colors.red
        )
      )
    ),
    title: "Siwar",
    home: Home(),
  ));
}