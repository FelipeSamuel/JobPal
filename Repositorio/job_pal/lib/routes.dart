import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes{
  static void navigateTo (context, Widget page, {bool replace = false}){
    if(replace){
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(builder: (context) => page),
      );
    }else{
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => page),
      );
    }
  }
}