import 'package:flutter/material.dart';
import 'package:jobpal/ui/components/app_bar.dart';
import 'package:jobpal/ui/login_guest_page.dart';
import 'package:jobpal/ui/login_page.dart';

import '../routes.dart';
import 'login_register_page.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
       GestureDetector(
         child:  Center(
           child: Text("EMPLOYEE", style: TextStyle(color: Colors.white, fontSize: 20)),
         ),
         onTap: (){
           Routes.navigateTo(context, LoginRegisterPage(), replace: true);
         },
       ),
          SizedBox(height: 25,),
          GestureDetector(
            child: Center(
              child: Text("EMPLOYER", style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
            onTap: (){
              Routes.navigateTo(context, LoginPage(), replace: true);
            },
          ),
          SizedBox(height: 25,),
          GestureDetector(
            child: Center(
              child: Text("GUEST", style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
            onTap: (){
              Routes.navigateTo(context, LoginGuestPage(), replace: true);
            },
          )
        ],
      ),
    );
  }
}
