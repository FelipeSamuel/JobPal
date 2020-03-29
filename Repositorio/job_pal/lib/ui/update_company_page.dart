import 'package:flutter/material.dart';

import '../routes.dart';
import 'components/app_bar.dart';
import 'home_page.dart';

class UpdateCompanyPage extends StatefulWidget {


  @override
  _UpdateCompanyPageState createState() => _UpdateCompanyPageState();
}

class _UpdateCompanyPageState extends State<UpdateCompanyPage> {
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
            Text("UPDATE COMPANY", style: TextStyle(color: Colors.white),),
              SizedBox(height: 30,),
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
                    hintText: "E-mail",
                    hintStyle: TextStyle(color: Colors.white)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                style:  TextStyle(color: Colors.white),
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
                    Navigator.of(context).pop();
                  },
                  child: Text( "UPDATE" , style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
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
