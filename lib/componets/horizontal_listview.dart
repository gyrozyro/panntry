import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/cannedfood.png',
            image_caption: 'Canned Food',
          ),
          Category(
            image_location: 'images/cats/fishfood.png',
            image_caption: 'Fish',
          ),
          Category(
            image_location: 'images/cats/fruitnveg.png',
            image_caption: 'Fruit and Vegetables',
          ),
          Category(
            image_location: 'images/cats/meats.png',
            image_caption: 'Meat',
          ),
          Category(
            image_location: 'images/cats/pastries.png',
            image_caption: 'Pastries',
          ),
          Category(
            image_location: 'images/cats/veganfood.jpg',
            image_caption: 'Vegan',
          ),
          Category(
            image_location: 'images/cats/waterbottle.png',
            image_caption: 'Drinks',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
              )
          ),
        ),
      ),
    );
  }
}
