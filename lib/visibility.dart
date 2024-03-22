import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class abcde extends StatefulWidget {
  const abcde({super.key});

  @override
  State<abcde> createState() => _abcdeState();
}

class _abcdeState extends State<abcde> {
  final _key = GlobalKey<FormState>();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  bool mohana = false;
  void priya(){
    setState(() {
      mohana= email.text.isNotEmpty &&  password.text.isNotEmpty == true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(height: 300),
            TextFormField(
              onChanged: (val){
                priya();
              },
              controller: email,
              decoration: InputDecoration(
                  hintText: " Email",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              onChanged: (val){
                priya();
              },
              controller: password,
              decoration: InputDecoration(

                  hintText: "Password ",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 30),
            Visibility(
                visible: mohana,
                child: ElevatedButton(onPressed: (){
                }, child: Text("Login"))),

          ],
        ),
      ),
    );
  }
}