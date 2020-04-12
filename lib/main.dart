import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// Original Imports
import 'package:panntry/componets/horizontal_listview.dart';
import 'package:panntry/componets/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/appleturn.jpg'),
        AssetImage('images/bessechurger.jpg'),
        AssetImage('images/bread.jpg'),
        AssetImage('images/mixedveg.jpg'),
        AssetImage('images/poppy.png'),
        AssetImage('images/spices.jpg'),
        AssetImage('images/tunamelt.jpg'),
      ],
      autoplay: false,
      //animationCurve: Curves.fastOutSlowIn,
      //animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.lightBlueAccent,
      indicatorBgPadding: 8.0,



    ),
  );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.25,
        backgroundColor: Colors.lightBlue,
        title: Text('Panntry'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Marcel CoolKid'),
              accountEmail: Text('JimJolWork@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.purple,
                ),
              ),
              decoration: new BoxDecoration(color: Colors.lightGreen),
            ),

            // body

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Cateogires'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title:  Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blueAccent),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue),
              ),
            ),

          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          //image car start
          image_carousel,

         // padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),),

          // Start horizontal list here
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('In Your Area '),),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      )
    );
  }
}
