import 'package:flutter/material.dart';
import 'package:jobpal/ui/login_page.dart';
import 'package:jobpal/ui/start_page.dart';

void main(){
  runApp(MaterialApp(
    title: "JobPal",
    home: StartPage(),
    debugShowCheckedModeBanner: false,
  ));
}