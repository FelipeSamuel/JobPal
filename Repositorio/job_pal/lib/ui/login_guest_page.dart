import 'package:flutter/material.dart';
import 'package:jobpal/ui/start_page.dart';

import '../routes.dart';
import 'components/app_bar.dart';
import 'home_page.dart';

class LoginGuestPage extends StatefulWidget {
  @override
  _LoginGuestPageState createState() => _LoginGuestPageState();
}

class _LoginGuestPageState extends State<LoginGuestPage> {
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
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                width: 200,
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                child:TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Company",
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
                child: Text("ENTER", style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(height: 20,),
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
