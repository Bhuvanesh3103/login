import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/profile.dart';
import 'package:login/task3.dart';
import 'package:login/validate.dart';
class navi extends StatefulWidget {
  const navi({super.key});
  @override
  State<navi> createState() => _naviState();
}

class _naviState extends State<navi> {

   int a =0;


    final result = [
      page(),
      profile(),
      valid(),


    ];


    void tap(alpha){
      setState(() {
        a = alpha;
      });
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: result[a],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon:Icon(Icons.person_3),label: "profile"),
          BottomNavigationBarItem(icon:Icon(Icons.settings),label: "settings"),

        ],
         currentIndex: a,
        onTap: tap,
      ),
    );
  }
}
