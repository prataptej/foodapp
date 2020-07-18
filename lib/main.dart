import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:food_app/components/Categories.dart';
import 'package:food_app/components/FruitCard.dart';
import 'dart:math';

import 'package:food_app/components/SearchBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Raleway'),
      home: HomePage(),
    );
  }
}

Color _kBackground = Color(0xFFFFF8F0); //background color
Color _kTextPrimary = Color(0xFF1E1E24); //text color

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _kBackground,
      appBar: AppBar(
        backgroundColor: _kBackground,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Transform.rotate(
            angle: pi / 2,
            child: Icon(
              Feather.bar_chart_2,
              color: _kTextPrimary,
              size: 30,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.shopping_bag,
              color: _kTextPrimary,
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Deliver to',
              style: TextStyle(
                color: _kTextPrimary,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  Feather.chevron_down,
                  color: _kTextPrimary,
                  size: 20,
                ),
              ],
            ),
            SizedBox(height: 30),
            SearchBar(),
            SizedBox(height: 30),
            Categories(),
            SizedBox(height: 20),
            FruitCard(),
          ],
        ),
      ),
    );
  }
}
