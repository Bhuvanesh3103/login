import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/profile.dart';
import 'package:login/validate.dart';

class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0;
  final pages = [
    Center(child: Text("data")),

  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),

    );
  }
}
