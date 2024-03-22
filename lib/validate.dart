import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/bottom.dart';
import 'package:login/task3.dart';
class valid extends StatefulWidget {
  @override
  State<valid> createState() => _validState();
}

class _validState extends State<valid> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text("LOGIN",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),))
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.pink,
                decoration: InputDecoration(labelText: "name"),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return"please enter some text";
                  }
                },
              ),
                //validator: (value) {
                  //if (value == null || value.isEmpty ) {
                    //return 'please enter some text';
                  //}
          
               // },
          
          
              TextFormField(
                cursorColor: Colors.red,
                decoration: InputDecoration(labelText: "email"),
                validator: (value) {
                  if (value!.isEmpty || !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!)) {
                    return 'please enter email';
                  }
          
                },
          
          
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "password"),
                validator: (value){
                  if(value!.length!<5 ||  !RegExp(r"^[0-9]+").hasMatch(value!))
                    {

                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "MOBILE NUMBER"),
                keyboardType: TextInputType.number,
                validator: (value){
                  if (value!.isEmpty|| value.length!=10 ||
                      !RegExp(r"^[0-9]+").hasMatch(value!)){
                    return 'please enter your mobile number correctly';
                  }
          
                },
          
              ),
              ElevatedButton(onPressed: (){
          


                // if(_formKey.currentState!.validate())
                ///   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid"),closeIconColor: Colors.red,))// }
              }, child: Text("ok")),


            ],
          ),
        ),
      ),


    );
  }
}
/// Reg exp