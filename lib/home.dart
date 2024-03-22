import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/bottom.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(child: Text("LOGIN",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
        leading: Icon(Icons.login),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: "enter your name"),
          ),
          TextFormField(decoration: InputDecoration(labelText: "enter your password"),),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> navi()));

            }, child:Text("Login")),
          ),
        ],
      ),
    );
  }
}
