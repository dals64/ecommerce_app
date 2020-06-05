import 'package:flutter/material.dart';
import 'package:ecommerceapp/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: Text("Shopping cart"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search,color: Colors.white,),
              onPressed: (){
              }
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total:"),
                subtitle: Text("\$500"),
              ),
            ),
            Expanded(
              child: new MaterialButton(
                  onPressed: (){},
                  child: Text("Check out", style: TextStyle(color: Colors.white),),
                  color: Colors.red,
              ),
            )
          ],
        ),
      ),
      body: new Cart_produts(),
    );
  }
}
