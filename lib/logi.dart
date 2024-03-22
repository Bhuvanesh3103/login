import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class logg extends StatelessWidget {
  const logg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
              child: Container(
                height:150,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/avatar.jpg"),
                  ),
                ),
              ),
            ),
          ),
         Container(
           height: 400,
           width: 400,
           decoration: BoxDecoration(
             border: Border.all(),
           ),
           child: Column(
             children: [
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Padding(
                         padding: const EdgeInsets.all(20),
                         child: Container(
                           height: 100,
                           width: 100,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             image: DecorationImage(
                               image: AssetImage("assets/avatar.jpg"),
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 30,
                   ),
                   Padding(
                     padding: const EdgeInsets.all(50),
                     child: Container(
                       height: 100,
                       width: 100,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           image: AssetImage("assets/avatar.jpg"),
                         ),
                       ),
                     ),
                   ),

                 ],
               ),
               SizedBox(
                 height: 20,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   SizedBox(
                     width: 300,
                     child: Padding(
                       padding: const EdgeInsets.only(right:100.0),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: TextFormField(
                           decoration: InputDecoration(
                             border: OutlineInputBorder(
                               borderRadius:BorderRadius.circular(10)
                             )
                           ),
                         ),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right:20),
                     child: ElevatedButton(onPressed: (){}, child: Text('save')),
                   )
                 ],
               ),
               SizedBox(
                 height: 60,
               ),
             ],
           ),
         ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/avatar.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: Text("Hello world, happy to see you in this morning")),
                Padding(
                  padding: const EdgeInsets.only(right:10),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/avatar.jpg"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
