import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Table Finder'),
        ),
        body: Container(
          width: 720.0,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Available Restaurants",
                style: TextStyle(fontSize: 36.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              RestaurantCard(),
              SizedBox(
                height: 20.0,
              ),
              RestaurantCard(),
              SizedBox(
                height: 20.0,
              ),
              RestaurantCard(),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.car_crash),
              label: 'Restaurants',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.filter),
              label: 'Filter',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_add),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      height: 140.0,
      width: 540.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "KFC",
            style: TextStyle(fontSize: 24.0),
          ),
          const Text("Cuisine:Fastfood",
              style: TextStyle(fontSize: 20.0)),
          const Text("Free tables: 5",
              style: TextStyle(fontSize: 20.0)),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20.0)),
            child: GestureDetector(
              child: const Text(
                "View Details",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

