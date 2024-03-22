import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/bottom.dart';
import 'package:login/profile.dart';
class cla extends StatelessWidget {
  const cla({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
          backgroundColor: Colors.pink,
          leading: Icon(Icons.arrow_back),
        ),
        body: Column(
          children: [
            Container(
              height:810,
              width: double.infinity,
      
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(
                  // colorFilter: ImageFilter.blur(),
                  image:AssetImage("assets/wall.jpg"),
                    fit: BoxFit.fill
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: Container(
                          height: 250,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30),
                                bottom: Radius.circular(30),
                            ),
                            
                          ),
                          child: Column(
                            children: [
                              Container(
                                height:150,
                                width: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      
                                  image: DecorationImage(
                                    image: AssetImage("assets/avatar.jpg"),
                                    fit: BoxFit.fill
                                  ),
                                ),
                              ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Text("abc",style: TextStyle(fontSize: 45),),
                               ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: Container(
                          height:250,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.vertical(top: Radius.circular(30),bottom: Radius.circular(30)),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height:150,
                                width: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      
                                  image: DecorationImage(
                                      image: AssetImage("assets/avatar.jpg"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("abc",style: TextStyle(fontSize: 45),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Container(
                          height: 400,
                          width: 345,
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    shape:BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage("assets/avatar.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 80),
                                child: SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.person),
                                      hintText: "Enter your name",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text("Login"),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),
                    ),
      
                ],
              ),
      
      
      
      
            ),
      
          ],
        ),
      ),
    );
  }
}

