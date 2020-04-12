import 'package:flutter/material.dart';

//Here we just have the variables for after you select a specifc product.
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_location;
  final product_detail_price;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_location,
    this.product_detail_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
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
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            color: Colors.lightGreenAccent,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                    leading: new Text(
                      widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text(
                          "\$${widget.product_detail_location}",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )),
                        Expanded(
                            child: new Text("\$${widget.product_detail_price}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)))
                      ],
                    )),
              ),
            ),
          ),

          // The Buttons under the product. The First Ones

          Row(
            children: <Widget>[
              // Rn the size button
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Colour")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Quantity")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

            ],
          ),

          // ===== Second Buttons =====

          Row(
            children: <Widget>[
              // Rn the size button
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.lightBlueAccent,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("I want this!")
                ),
              ),

              new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.black, onPressed: (){}),

              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.black ,onPressed: (){}),

            ],
          ),


        ],
      ),
    );
  }
}
