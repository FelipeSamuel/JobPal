import 'package:flutter/material.dart';
import 'package:jobpal/ui/login_page.dart';

import '../routes.dart';
import 'components/app_bar.dart';
import 'home_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                style:  TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.white)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                style:  TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Company",
                    hintStyle: TextStyle(color: Colors.white)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                style:  TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Coordinates ( Latitude )",
                    hintStyle: TextStyle(color: Colors.white)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                style:  TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Coordinates (Longitude)",
                    hintStyle: TextStyle(color: Colors.white)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                style:  TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                style:  TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white)
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: 200,
                height: 50,
                child: RaisedButton(
                  color: Colors.blueGrey,
                  onPressed: (){
                    Routes.navigateTo(context, HomePage(), replace: true);
                  },
                  child: Text("REGISTRATE", style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Routes.navigateTo(context, LoginPage(),replace: true);
                },
                child: Text("Cancel", style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
