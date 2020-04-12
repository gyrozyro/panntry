import 'package:flutter/material.dart';
import 'package:panntry/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Pret Egg Sandwich",
      "picture": "images/products/eggsand.jpg",
      "prodloc": "Clayhill Halls Of Residence",
      "price": 0,
    },
    {
      "name": "Pastries",
      "picture": "images/products/past1.jpg",
      "prodloc": "Clayhill Halls Of Residence",
      "price": 0,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_loc: product_list[index]['prodloc'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_loc;
  final prod_price;

  Single_prod(
      {this.prod_name, this.prod_picture, this.prod_loc, this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                // We are just passing the base product values into product details its just class shit.
                  builder: (context) => new ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_picture: prod_picture,
                    product_detail_location: prod_loc,
                    product_detail_price: prod_price,
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$prod_loc",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
