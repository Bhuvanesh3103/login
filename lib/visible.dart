import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class visible extends StatefulWidget {
  const visible({super.key});

  @override
  State<visible> createState() => _visibleState();
}

class _visibleState extends State<visible> {
  final _key = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool mp = false;


 void mona(){
   setState(() {
     mp = email.text.isNotEmpty &&  pass.text.isNotEmpty== true;
   });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("visibility")),
        backgroundColor: Colors.lightGreen,
      ),

      body: Column(
         key: _key,
        children: [
          Padding(

            padding: const EdgeInsets.only(top: 300),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "email",
                border: OutlineInputBorder(),
              ),
              onChanged: (val){
                mona();
              },
              controller: email,

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "email",
                border: OutlineInputBorder(),
              ),

                onChanged: (val){
                  mona();
                },
              controller: pass,
            ),
          ),
          Visibility(
            visible: mp,
            child: ElevatedButton(onPressed: (){

            }, child: Text("click")),
          ),

        ],
      ),
    );
  }
}
