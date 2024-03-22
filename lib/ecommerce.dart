import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class commerce extends StatefulWidget {
  const commerce({super.key});

  @override
  State<commerce> createState() => _commerceState();
}

class _commerceState extends State<commerce> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello,"
                ,style: TextStyle(fontSize: 20),),
            Text("Let's shop"
              ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 5,right: 2,left: 3),
          child: Container(
            decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(60),
            image: DecorationImage(
            image: AssetImage("assets/hands.jpg"),
                ),
            ),

                ),
        ),
        actions: [
          Image.asset("assets/heart.jpg"),
          Icon(Icons.shopping_cart,color: Colors.purple,size: 35),
        ],

      ),



      body: Padding(
        padding: const EdgeInsets.all(0.2),
        child: SingleChildScrollView(
          child: Column(
            children: [

          Container(
          padding: EdgeInsets.all(8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search by Keyword or Product ID",
              hintStyle: TextStyle(fontSize: 16),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 10),
                child: Icon(Icons.search, size: 20, color: Colors.grey),
              ),
              suffixIcon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.mic, size: 25, color: Colors.grey),

                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.camera_alt, size: 25, color: Colors.grey),
                  ),
                ],
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          
              ),
          Container(
            height: 40,
            width:700,
            color: Colors.grey.shade200,
            child: Row(
              children: [
                Icon(Icons.location_on_outlined, size: 24),
                Text("Add delivery location to get extra discount",style: TextStyle(fontWeight: FontWeight.bold),),
                Icon(Icons.arrow_forward_ios, size:10,color: Colors.grey.shade600,),
                Icon(Icons.arrow_forward_ios, size: 10,color: Colors.grey.shade600,),
                Icon(Icons.arrow_forward_ios, size: 10,color: Colors.grey.shade600,),
              ],
            ),
          ),
              Container
                (
                height: 150,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection:Axis.horizontal,
                  itemBuilder: (BuildContext context, int index)
                {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: 115,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/kids.jpg"),
                            ),
                          ),
                        ),
                        Text("kids and toys",style: TextStyle(fontSize: 15),),
                      ],
                    ),
          
          
                  );
                },
                ),
              ),
              Container(
                height: 150,
                width: 700,
                child: CarouselSlider.builder(
                  options:CarouselOptions(
                    aspectRatio: 16/9,
                    viewportFraction: 0.96,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                  ),
          
                  itemCount: 10, itemBuilder: (BuildContext context, int index, int realIndex)
                  {
                    return Container(
          
                      width: 700,
                      height: 10,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.vertical(top: Radius.circular(7),bottom:Radius.circular(7) ),
                        image: DecorationImage(
                          image: AssetImage("assets/home.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                    },
                ),
              ),
      Positioned(
        height: 10,
          width: 6,
          child:DotsIndicator(
            dotsCount: 4,
            // position: currentIndex,
            onTap: (index){},
            decorator: const DotsDecorator(
              color: Colors.black,
              activeColor: Colors.white,
            ),

          ) ,
      ),


              Container(
                height: 420,
                width: 400,
          
                child: GridView.builder(
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0.1,
                  crossAxisSpacing: 0.1,

          
                ),
          
          
          
                  itemCount: 6,
                  physics:  NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index)
          
                {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 131,
                          width: 195,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/saree.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text("wonderful wall hooks",style: TextStyle(fontSize: 9),),
                      Text("₹ 137",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                      Text("₹ 129 With Special Offer",style: TextStyle(fontSize: 9.5,color: Colors.green),),
                      Text("₹ 45 off | First Order Discount",style: TextStyle(fontSize: 10),),
                      Text("Free Delivery",style: TextStyle(fontSize: 9)),
                    ],
                  );
                },
          
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
