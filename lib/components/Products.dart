import 'package:ecommerceapp/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name':'Blazer',
      'picture':'images/products/blazer1.jpeg',
      'old_price':120,
      'price':85
    },
    {
      'name':'Red dress',
      'picture':'images/products/dress1.jpeg',
      'old_price':120,
      'price':85
    },
    {
      'name':'Black pant',
      'picture':'images/products/pants1.jpg',
      'old_price':100,
      'price':80
    },
    {
      'name':'Gray pant',
      'picture':'images/products/pants2.jpeg',
      'old_price':100,
      'price':80
    },
    {
      'name':'girl blazer',
      'picture':'images/products/blazer2.jpeg',
      'old_price':145,
      'price':100
    },
    {
      'name':'Black dress',
      'picture':'images/products/dress2.jpeg',
      'old_price':115,
      'price':93.5
    },
    {
      'name':'Red hills',
      'picture':'images/products/hills2.jpeg',
      'old_price':90,
      'price':75
    },
    {
      'name':'Brown hills',
      'picture':'images/products/hills1.jpeg',
      'old_price':100,
      'price':80
    },
    {
      'name':'Shoes',
      'picture':'images/products/shoe1.jpg',
      'old_price':180,
      'price':145
    },
    {
      'name':'Skirt',
      'picture':'images/products/skt1.jpeg',
      'old_price':80,
      'price':65
    },
    {
      'name':'Pink skirt',
      'picture':'images/products/skt2.jpeg',
      'old_price':103,
      'price':95
    },

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
      ),
      itemBuilder: (BuildContext context, int index){
        return Single_prod(
          product_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_old_price,
    this.prod_picture,
    this.prod_price,
    this.product_name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag:product_name,
        child: Material(
          child: InkWell(
            onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>ProductDetails(
              product_detail_image: prod_picture,
              product_detail_name: product_name,
              product_detail_old_price: prod_old_price,
              product_detail_price: prod_price,
            ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(product_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    ),
                    new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                  ],
                )
              ),
              child: Image.asset(prod_picture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
