import 'package:flutter/material.dart';
import 'package:login/bottom.dart';
import 'package:login/log.dart';



class page extends StatelessWidget {


  const page({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        leading: Icon(Icons.account_circle,size: 35,color: Colors.cyanAccent,),
        title: Text("welcome",style: TextStyle(color: Colors.cyanAccent,fontSize: 35,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.search),
          Icon(Icons.camera),
        ],
      ),
      body:
      Column(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 200,bottom: 10),
            child: SizedBox(
              width: 390,
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Enter name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 390,
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                hintText: "enter your password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            height: 80,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.cyanAccent,
                border: Border.all(),
                //borderRadius: BorderRadius.circular(50),
                shape: BoxShape.circle,
            ),
            child: GestureDetector(
              onTap: ()
              {
                Navigator.push
                  (
                    context,
                    MaterialPageRoute(builder:(context) => const navi()),
                );
              },

            ),
          ),

         ],
      ),

    );


  }
}




