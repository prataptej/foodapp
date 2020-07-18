import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:food_app/models/FruitsModel.dart';
import 'package:food_app/FruitPage.dart';

Color _kTextPrimary = Color(0xFF1E1E24); //text color

class FruitCard extends StatefulWidget {
  @override
  _FruitCardState createState() => _FruitCardState();
}

class _FruitCardState extends State<FruitCard> {
  List<Fruit> fruits = [
    Fruit(
      name: 'Mangoes',
      image: 'assets/images/mango.png',
      price: 200,
      desc:
          "A mango is a juicy stone fruit produced from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit. Most of these species are found in nature as wild mangoes. The genus belongs to the cashew family Anacardiaceae.",
      color: Colors.yellow.withOpacity(0.6),
    ),
    Fruit(
      name: 'Apples',
      image: 'assets/images/apple.png',
      price: 250,
      desc:
          "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today.",
      color: Colors.red.withOpacity(0.6),
    ),
    Fruit(
      name: 'Peaches',
      image: 'assets/images/peach.png',
      price: 150,
      desc:
          "A peach is a soft, juicy and fleshy stone fruit produced by a peach tree.",
      color: Colors.lime.withOpacity(0.5),
    ),
    Fruit(
      name: 'Avocado',
      image: 'assets/images/avocado.png',
      price: 175,
      desc:
          "The avocado, a tree likely originating from south-central Mexico, is classified as a member of the flowering plant family Lauraceae. The fruit of the plant, also called an avocado, is botanically a large berry containing a single large seed.",
      color: Colors.deepOrange.withOpacity(0.6),
    ),
    Fruit(
      name: 'Guava',
      image: 'assets/images/guava.png',
      price: 75,
      desc:
          "Guava is a common tropical fruit cultivated in many tropical and subtropical regions. Psidium guajava is a small tree in the myrtle family, native to Mexico, Central America, the Caribbean and northern South America.",
      color: Colors.green.withOpacity(0.6),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 8 / 12,
        ),
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FruitPage(
                    fruit: fruits[index],
                  ),
                ),
              );
            },
            child: Container(
              height: 250,
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: fruits[index].color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Hero(
                      tag: fruits[index].name,
                      child: Image.asset(
                        fruits[index].image,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Text(
                    fruits[index].name,
                    style: TextStyle(
                      color: _kTextPrimary,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '\u20B9' + fruits[index].price.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          color: _kTextPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Feather.shopping_bag,
                          color: _kTextPrimary,
                        ),
                      ),
                    ],
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
