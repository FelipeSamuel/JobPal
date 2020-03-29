import 'package:flutter/material.dart';
import 'package:jobpal/ui/components/app_bar.dart';
import 'package:jobpal/ui/update_company_page.dart';

import '../routes.dart';

class CompanyPage extends StatefulWidget {
  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "COMPANY",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Name: John Dude", style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(
                height: 5,
              ),
              Text("Company: Amazon", style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(
                height: 5,
              ),
              Text("Cordinates: -20.0202, -20.29992", style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(
                height: 30,
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 GestureDetector(
                   onTap: (){
                    Routes.navigateTo(context, UpdateCompanyPage());
                   },child:  Icon(Icons.edit, color: Colors.white, size: 30))
               ],
              )
            ],
          ),
        ));
  }
}
