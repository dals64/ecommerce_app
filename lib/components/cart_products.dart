import 'package:flutter/material.dart';


class Cart_produts extends StatefulWidget {
  @override
  _Cart_produtsState createState() => _Cart_produtsState();
}

class _Cart_produtsState extends State<Cart_produts> {
  var Products_on_the_cart=[
    {
      'name':'Brown hills',
      'picture':'images/products/hills1.jpeg',
      'price':80,
      'size': 'M',
      'color':'Red',
      'quantity':1
    },
    {
      'name':'Shoes',
      'picture':'images/products/shoe1.jpg',
      'price':145,
      'size': 'M',
      'color':'Blue',
      'quantity':4
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index){
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_picture: Products_on_the_cart[index]["picture"],
          cart_prod_qty: Products_on_the_cart[index]["quantity"],
          cart_prod_size: Products_on_the_cart[index]["size"],
          cart_prod_price: Products_on_the_cart[index]["price"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;
  final cart_prod_price;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
    this.cart_prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_prod_picture, height: 100, width: 40,),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Text("Size: "),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(cart_prod_size, style: TextStyle(color: Colors.red),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 8.0),
                  child: Text("Color: "),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(cart_prod_color, style: TextStyle(color: Colors.red),),
                )
              ],
            ),
            Container(
                color: Colors.yellow,
                alignment: Alignment.topLeft,
                child: Text("\$ ${cart_prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),)
            )
          ],
        ),
        trailing: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
          child: Container(
            width: 104,
            height: 60,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_up),
                  onPressed: (){},
                ),
                Text("${cart_prod_qty}"),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onPressed: (){},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
