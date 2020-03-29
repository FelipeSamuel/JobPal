import 'package:flutter/material.dart';
import 'package:jobpal/ui/company_page.dart';
import 'package:jobpal/ui/list_page.dart';
import 'package:jobpal/ui/new_employee_page.dart';
import 'package:jobpal/ui/start_page.dart';

import '../routes.dart';
import 'components/app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar() ,
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: selectedPage,
        children: <Widget>[
          home(),
          company(),
          employee()
        ],
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.black,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.blue,
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.white))), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedPage,
          onTap: (index){
           if(index==3){
             Routes.navigateTo(context, StartPage(), replace: true);
           }else{
             setState(() {
               selectedPage = index;
             });
           }
          },
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.domain),
              title: new Text("Company"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.people),
              title: new Text("Employees"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.exit_to_app),
              title: new Text("Sign out"),
            )
          ],
        ),
      ),
    );
  }



  Widget home()=>ListView(
    children: <Widget>[
      ListTile(
        title: Text("ACTIVE IN HOLMGRENS PLAST AB", style: TextStyle(color: Colors.white),),
      ),
      SizedBox(height: 30,),
      ListTile(
        title: Text("GUESTS (2)", style: TextStyle(color: Colors.white),),
        onTap: (){
          Routes.navigateTo(context, ListPage(type: "guest",));
        },
      ),
      ListTile(
        title: Text("SUPERVISORS (1)", style: TextStyle(color: Colors.white),),
        onTap: (){
          Routes.navigateTo(context, ListPage(type: "supervisors",));
        },
      ),
      ListTile(
        title: Text("EMPLOYEES (15)", style: TextStyle(color: Colors.white),),
        onTap: (){
          Routes.navigateTo(context, ListPage(type: "employees",));
        },
      ),
      ListTile(
        title: Text("ALL (18)", style: TextStyle(color: Colors.white),),
        onTap: (){
          Routes.navigateTo(context, ListPage(type: "employees",));
        },
      )
    ],
  );

  Widget company()=>ListView(
    children: <Widget>[
      ListTile(
        title: Text("COMPANIES IN JOBPAL", style: TextStyle(color: Colors.white),),
      ),
      SizedBox(height: 30,),
      ListTile(
        title: Text("Company 1", style: TextStyle(color: Colors.white),),
        onTap: (){
          Routes.navigateTo(context, CompanyPage());
        },
      ),
      ListTile(
        title: Text("Company 2", style: TextStyle(color: Colors.white),),
        onTap: (){
          Routes.navigateTo(context, CompanyPage());
        },
      ),
      ListTile(
        title: Text("Company 3", style: TextStyle(color: Colors.white),),
        onTap: (){
          Routes.navigateTo(context, CompanyPage());
        },
      )
    ],
  );


  Widget employee()=>ListView(
    children: <Widget>[
      ListTile(
        title: Text("EMPLOYEES", style: TextStyle(color: Colors.white),),
      ),
     Row(
       mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
       GestureDetector(
         onTap: (){
           Routes.navigateTo(context, NewEmployeePage(editing: false,));
         },
         child:  Icon(Icons.add, color: Colors.white, size: 50,),
       )
      ],
     ),
      SizedBox(height: 30,),
      ListTile(
        title: Text("Employee 1", style: TextStyle(color: Colors.white),),
        onTap: (){
          Routes.navigateTo(context, ListPage(type: "guest",));
        },
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.delete, color: Colors.white,),
            SizedBox(width: 15,),
           GestureDetector(
             onTap: (){
               Routes.navigateTo(context, NewEmployeePage(editing: true,));
             },
             child:  Icon(Icons.edit, color: Colors.white,),
           )
          ],
        ),
      ),
      ListTile(
        title: Text("Employee 2", style: TextStyle(color: Colors.white),),
        onTap: (){
          Routes.navigateTo(context, ListPage(type: "supervisors",));
        }, trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.delete, color: Colors.white,),
          SizedBox(width: 15,),
          GestureDetector(
            onTap: (){
              Routes.navigateTo(context, NewEmployeePage(editing: true,));
            },
            child:  Icon(Icons.edit, color: Colors.white,),
          )
        ],
      ),
      ),
      ListTile(
        title: Text("Employee 3", style: TextStyle(color: Colors.white),),
        onTap: (){
          Routes.navigateTo(context, ListPage(type: "employees",));
        }, trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.delete, color: Colors.white,),
          SizedBox(width: 15,),
          GestureDetector(
            onTap: (){
              Routes.navigateTo(context, NewEmployeePage(editing: true,));
            },
            child:  Icon(Icons.edit, color: Colors.white,),
          )
        ],
      ),
      )
    ],
  );
}
