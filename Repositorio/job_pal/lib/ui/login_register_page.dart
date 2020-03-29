import 'package:flutter/material.dart';
import 'package:jobpal/ui/login_page.dart';
import 'package:jobpal/ui/register_page.dart';
import 'package:jobpal/ui/start_page.dart';

import '../routes.dart';
import 'components/app_bar.dart';
import 'home_page.dart';

class LoginRegisterPage extends StatefulWidget {
  @override
  _LoginRegisterPageState createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 120,),
            Center(
              child: Container(
                child:TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                width: 200,
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                child:TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                width: 200,
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: 200,
              child: RaisedButton(
                color: Colors.blueGrey,
                onPressed: (){
                  Routes.navigateTo(context, HomePage(), replace: true);
                },
                child: Text("SIGN IN", style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                  Routes.navigateTo(context, RegisterPage(), replace: true);
              },
              child: Text("Registrate", style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Routes.navigateTo(context, StartPage(), replace: true);
              },
              child: Text("Cancel", style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
