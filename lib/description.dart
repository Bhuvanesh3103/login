import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

const List<String> list = <String>['1', '2', '3', '4'];

class description extends StatefulWidget {
  const description({super.key});

  @override
  State<description> createState() => _descriptionState();
}

class _descriptionState extends State<description> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent.shade100,
          leading: Icon(Icons.arrow_back_sharp),
          title: Container(
            height: 32,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.document_scanner_rounded),
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all( 8.0),
                    child: Text(
                      "Brand : Acnos",
                      style: TextStyle(color: Colors.cyanAccent, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 135),
                    child: RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0.1),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        size: 1,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "2,077",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Acnos Premium Brand - A digital watch shockproof"
                  "Multi-Functional Automatic 5 color Army Strap Waterproof"
                  "Digital Sports Watch for Men's Kids Watch for Boys Watch"
                  "For Boys Watch for Men pack of 1",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280),
                child: Container(
                  height: 30,
                  width: 125,
                  child: ListTile(
                    tileColor: Colors.black,
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Amazon's choice",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      scrollDirection: Axis.horizontal,
                      viewportFraction: 0.96,
                      initialPage: 0,
                    ),
                    itemCount: 7,
                    itemBuilder:
                        (BuildContext context, int index, int realIndex) {
                      return Container(
                        height: 50,
                        width: 390,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(

                                "assets/watch.jpg"
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              DotsIndicator(
                dotsCount: 5,
                // position: currentIndex,
                onTap: (index) {},
                decorator: const DotsDecorator(
                  color: Colors.black,
                  activeColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 28,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Center(
                          child: Text(
                        "Limited time deal",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 29,
                      width: 220,
                      child: Row(
                        children: [
                          Text(
                            "-86%",
                            style: TextStyle(fontSize: 25, color: Colors.red),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "₹284",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 25,
                      child: Column(

                        children: [
                          Text(
                            "M.R.P:₹1999",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 22,
                      width: 100,
                      color: Colors.black54,
                      child: Center(
                        child: Text("a Fullfilled",
                          style: (TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, right: 200),
                    child: Container(
                      height: 23,
                      width: 190,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Inclusive of all taxes",
                          style: (TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      "%  All offers & discounts",
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                Divider(),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(

                          child: Text(
                            "Total: ₹284",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(style: TextStyle(fontSize: 18), children: [
                        TextSpan(
                            text: "FREE delivery",
                            style: TextStyle(color: Colors.green)),
                        TextSpan(
                            text: "Monday",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                        TextSpan(
                          text:
                              "on  orders dispatched by Amazon over ₹499.orders Within",style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                            text: "5hrs 35mins. Details",
                            style: TextStyle(color: Colors.green)),
                      ]),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 300,
                            child: Text(
                              '"Delivering to chennai 600006 - update location"',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.cyan.shade900),
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "In stock",
                      style:
                          TextStyle(fontSize: 20, color: Colors.green.shade800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          // border: Border.all(),
                          borderRadius: BorderRadius.circular(5)),
                      height: 35,
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          value: dropdownValue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: list.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text('Qty: $value'),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.yellow,
                      ),
                      child: Center(
                        child: Text(
                          "Add to cart",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      height: 60,
                      width: 350,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.yellow.shade800,
                      ),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      height: 60,
                      width: 350,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 18),
                        children: [
                          TextSpan(text: "sold by"),
                          TextSpan(
                              text: "A SQUARE EMPIRE",
                              style:
                                  TextStyle(color: Colors.cyanAccent.shade700)),
                          TextSpan(text: "and",style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: "Fulfilled by Amazon.",
                              style:
                                  TextStyle(color: Colors.cyanAccent.shade700)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
