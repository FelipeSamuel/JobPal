import 'package:flutter/material.dart';

import '../routes.dart';
import 'components/app_bar.dart';
import 'home_page.dart';

class NewEmployeePage extends StatefulWidget {
  final bool editing;

  NewEmployeePage({@required this.editing});

  @override
  _NewEmployeePageState createState() => _NewEmployeePageState();
}

class _NewEmployeePageState extends State<NewEmployeePage> {
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
            Text("${widget.editing ? "UPDATE" : "REGISTRATE"} EMPLOYEE", style: TextStyle(color: Colors.white),),
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
                    hintText: "Number",
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
                  child: Text(widget.editing ? "UPDATE": "REGISTRATE" , style: TextStyle(color: Colors.white),),
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
