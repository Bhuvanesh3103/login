import 'package:flutter/material.dart';
class pag extends StatelessWidget {
  const pag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image:AssetImage("assets/avatar.jpg"),


              )
            ),


          ),
        ),



        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        title: Center(child: Container(
            height:1000,
            width:800,
            child: Icon(Icons.home,size:50,))),
        actions: [
          Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("GT",style: TextStyle(color: Colors.red,fontSize:30,fontWeight: FontWeight.bold),),
          )),

        ],

      ),
              body: Column(
                children: [

                  Padding(

                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height:500,
                        width:400,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage("assets/avatar.jpg"),
                            fit: BoxFit.fill,
                          ),


                        ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(

                                decoration: InputDecoration(
                                  icon:Icon(Icons.person),
                                  hintText: "enter your name",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.password),
                                  hintText: "enter your password",
                                  border: OutlineInputBorder(),
                                ),

                              ),
                            ),
                            ElevatedButton(onPressed: (){}, child: Text("login")),
                          ],
                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.password),
                          hintText: "Enter the paasword",
                          border: OutlineInputBorder(),

                        ),
                      ),
                    ),

                  ),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ElevatedButton(onPressed: (){}, child: Text("login")),
                   )

                ],
              )





              //child: Image.asset("assets/avatar.jpg")

          );





  }
}
