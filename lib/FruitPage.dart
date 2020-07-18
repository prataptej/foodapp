import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:food_app/models/FruitsModel.dart';

class FruitPage extends StatefulWidget {
  final Fruit fruit;

  const FruitPage({this.fruit});
  @override
  _FruitPageState createState() => _FruitPageState(fruit);
}

Color _kBackground = Color(0xFFFFF8F0); //background color
Color _kTextPrimary = Color(0xFF1E1E24); //text color

class _FruitPageState extends State<FruitPage> {
  final Fruit fruit;

  int count = 0;

  _FruitPageState(this.fruit);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _kBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: fruit.color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Feather.chevron_left,
                          color: _kTextPrimary,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: _kTextPrimary,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Hero(
                      tag: fruit.name,
                      child: Image.asset(
                        fruit.image,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        fruit.name,
                        style: TextStyle(
                          color: _kTextPrimary,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '1 Kg',
                        style: TextStyle(
                          color: _kTextPrimary,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\u20B9 ' + fruit.price.toString(),
                    style: TextStyle(
                      color: _kTextPrimary,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Description',
                    style: TextStyle(
                      color: _kTextPrimary,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    fruit.desc,
                    style: TextStyle(
                      color: _kTextPrimary,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                    color: count > 0 ? fruit.color : Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Feather.shopping_bag,
                        color: _kTextPrimary,
                        size: 30,
                      ),
                      Text(
                        'Add',
                        style: TextStyle(
                          color: _kTextPrimary,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    setState(() {
                      if (count > 0) count--;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: fruit.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Feather.minus,
                      size: 30,
                      color: _kTextPrimary,
                    ),
                  ),
                ),
                Text(
                  count.toString(),
                  style: TextStyle(
                    color: _kTextPrimary,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    setState(() {
                      if (count < 10) count++;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: fruit.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Feather.plus,
                      size: 30,
                      color: _kTextPrimary,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
