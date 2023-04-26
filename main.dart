import 'dart:html';

import 'package:flutter/material.dart';

class Box {
  final String image;
  final String text;
  final String nbr;

  Box({required this.image, required this.text, required this.nbr});
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Box> boxes = [    Box(image: 'carbon-dioxide.png', text: 'Tons of Co2 saved in the last 9 month', nbr: "224"),    Box(image: 'deals.png', text: 'Offers in the last 3 months', nbr: "78"),    Box(image: 'enterprise.png', text: 'Companies registered on the platform', nbr: "98"),  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brecycler',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Center(
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: boxes.map((box) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 156, 221, 177),
                    border: Border.all(
                      width: 10,color: Colors.amber
                    )
                    
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/${box.image}',
                        width: 50.0,
                        height: 50.0,
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        box.nbr,
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 70, 70, 70)),
                      ),
                      Text(
                        box.text,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 51, 51, 51)),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 50.0,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 156, 221, 177),
          ),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/facebook.png',
                width: 30.0,
                height: 30.0,
              ),
              SizedBox(width: 20.0),
              Image.asset(
                'images/linkedin.png',
                width: 30.0,
                height: 30.0,
              ),
              SizedBox(width: 20.0),
              Image.asset(
                'images/youtube.png',
                width: 30.0,
                height: 30.0,
              ),
              SizedBox(width: 20.0),
              Image.asset(
                'images/instagram.png',
                width: 30.0,
                height: 30.0,
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
