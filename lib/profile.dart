import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/bottom.dart';
import 'package:login/login.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("PROFILE",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30))),
        backgroundColor: Colors.lime,
        leading: GestureDetector(

            onTap: ()
            {
              Navigator.push
                (
                context,
                MaterialPageRoute(builder:(context) => const navi()),
              );
            },
            child: Icon(Icons.arrow_back)),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Text("Report",style: TextStyle(),),
          ),
         Padding(
           padding: const EdgeInsets.only(top: 10),
           child: ListTile(
             tileColor: Colors.blueGrey,
             leading: Icon(Icons.person_3_sharp),
             title: Center(child: Text("Report1",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
             trailing: Icon(Icons.arrow_forward),
           ),
         ),
          SizedBox(
            height:10
          ),
          ListTile(
            tileColor: Colors.lightBlueAccent,
            leading: Icon(Icons.person_3_sharp),
            title: Center(child: Text("Report2",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            trailing: Icon(Icons.arrow_forward),
          ),
          SizedBox(
              height:10
          ),
          Text("Help"),
          SizedBox(
              height:10
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>navi()));
            },

            child: ListTile(
              tileColor: Colors.pink,
              leading: Icon(Icons.logout),
              title: Center(child: Text("logout",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ],


      ),
    );
  }
}
