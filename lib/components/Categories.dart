import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

Color _kTextPrimary = Color(0xFF1E1E24); //text color

class _CategoriesState extends State<Categories> {
  int selected = 0;
  List<String> categories = ['Fruits', 'Vegetables', 'Dairy', 'Groceries'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selected = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    categories[index],
                    style: TextStyle(
                      color: _kTextPrimary,
                      fontSize: 20,
                      fontWeight:
                          selected == index ? FontWeight.w600 : FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 50,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: selected == index
                          ? _kTextPrimary
                          : Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
