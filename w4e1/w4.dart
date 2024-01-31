import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
              name: "Goldbears",
              description: " With flavors ranging from pineapple to strawberry, the five colorful Goldbears represent one thing above all else: irresistible joy that's fun to share.",
              price: 35,
              image: "Goldbears.webp"),
          ProductBox(
              name: "Twin Snakes",
              description: "Sssweet and Sssour Twin Snakes are closely coiled together in a pack of delicious gummies with flavors like Cherry & Orange, Apple & Lemon, and Blueberry & Blackcurrant.",
              price: 35,
              image: "Twin Snakes.jpg"),
          ProductBox(
              name: "Sour Goldbears",
              description: "Every bag of Sour Goldbears includes the classic Lemon, Orange, Pineapple, Raspberry, and Strawberry flavors with a sour and tangy twist!",
              price: 35,
              image: "Sour Goldbears.webp"),
          ProductBox(
              name: "Starmix",
              description: "HARIBO’s most delicious stars! Enjoy famous flavors like Goldbears, Twin Snakes, Happy Cola, Happy Cherries, and Gummi Rings, all in a single bag!",
              price: 35,
              image: "Starmix.jpg"),
          ProductBox(
              name: "Z!NG Sour S’ghetti",
              description: "Extra-sour strands of sugar-coated Strawberry, Blueberry, and Green Apple tangle and tango together in every bag.",
              price: 35,
              image: "Z!NG Sour S’ghetti.webp"),
          ProductBox(
              name: "Peaches",
              description: "Looking for a treat that’s perfect for any season? Then look no further! HARIBO Peaches are sweet, velvety soft, and irresistibly delicious. As peachy as they come!",
              price: 35,
              image: "Peache.webp"),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.description, required this.price, required this.image})
    : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 150,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/candyImg/" + image),  // Corrected image path
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 2, 2, 78),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}