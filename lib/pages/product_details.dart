import 'package:ecommerceapp/main.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/pages/cart.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_old_price;
  final product_detail_image;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_price,
    this.product_detail_old_price,
    this.product_detail_image,

  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>new Homepage()));
          },
          child: Text('FashApp'),
        ),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              }
          ),
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: new GridTile(
              child: Container(
                child: Image.asset(widget.product_detail_image),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[

                      Expanded(
                        child: new Text("\$${widget.product_detail_old_price}",
                          style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: new Text("\$${widget.product_detail_price}",
                        style: TextStyle( fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

     //   *************** The first Buttons **************
          Row(
            children: <Widget>[

              // ****** Size *******
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                      builder: (context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Choose the size"),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("close"),
                          )
                        ],
                      );
                      }
                    );
                  },
                  color: Colors.white,
                  elevation: 0.2,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              // ****** Color *******
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Colors"),
                            content: new Text("Choose a color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        }
                    );
                  },
                  color: Colors.white,
                  elevation: 0.2,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              // ****** Quantity *******
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose the size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        }
                    );
                  },
                  color: Colors.white,
                  elevation: 0.2,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

       //************ Second Button *************
       Row(
         children: <Widget>[
           Expanded(
             child: MaterialButton(
               onPressed: (){},
               color: Colors.red,
               elevation: 0.2,
               textColor: Colors.white,
               child: new Text("Buy now"),
             ),
           ),
           
           new IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){}),

           new IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}),
         ],
       ),

          new Divider(),

          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("gshgxgf dg cgf hghgchg fuyguy guyguy ugu gu ug u gug uy guyguyg uguygugug uuygugug uggugu gug ug ug uguygu yguy g"),
          ),

          Divider(),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0,5.0,5.0),
                child: new Text("Product name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),)
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0,5.0,5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand x"),)
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0,5.0,5.0),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("New"),)
            ],
          ),

          Divider(),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Similar products"),
          ),

     // SIMILAR PRODUCTS SECTION
          Container(
            height: 360,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
      ),
      itemBuilder: (BuildContext context, int index){
        return Similar_single_prod(
          product_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}


class Similar_single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
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
