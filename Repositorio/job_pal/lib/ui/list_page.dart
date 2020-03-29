import 'package:flutter/material.dart';

import 'components/app_bar.dart';


class ListPage extends StatefulWidget {

  final String type;

  ListPage({@required this.type});

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {

    String tipo = "Guests";
    if(widget.type == "guest"){
      tipo = "Guest";
    }else if(widget.type == "supervisors"){
      tipo = "Supervisor";
    }else if(widget.type == "employees"){
      tipo = "Employee";
    }else{
      tipo = "Guest";
    }

    return Scaffold(
      appBar:appBar() ,
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index){
          return  ListTile(
            title: Text(tipo + " $index", style: TextStyle(color: Colors.white),),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child:  Text("back", style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
