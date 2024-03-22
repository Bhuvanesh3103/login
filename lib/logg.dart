import 'package:flutter/material.dart';
class log extends StatelessWidget {
  const log({super.key});

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      body:
        Column(
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/avatar.jpg"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom:100),
                        child: Padding(
                          padding: const EdgeInsets.all(40),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/avatar.jpg"),
                              )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:100),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/avatar.jpg"),
                              ),
                          ),
                        ),



                      ),
                    ],
                  ),
                  TextFormField(),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(onPressed: (){}, child: Text('login'))
                ],
              ),
            ),
          ],
        ),
    );



  }
}
