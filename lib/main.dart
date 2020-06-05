import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerceapp/components/horizontal_listview.dart';
import 'package:ecommerceapp/components/Products.dart';
import 'package:ecommerceapp/pages/cart.dart';


void main(){
  runApp(
      new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      )
  );
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget image_caroussel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.5,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>new Homepage()));
          },
          child: Text('FashApp')
        ),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              }
          )
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[

            // Header
            new UserAccountsDrawerHeader(
              accountName: Text('Users name'),
              accountEmail: Text('lemotieuarold@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),

            // Body

            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home, color: Colors.red),
              ),
            ),

            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.red),
              ),
            ),

            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red),
              ),
            ),

            new InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: new ListTile(
                title: Text('Shopping cart '),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),

            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('Favourite'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),

            Divider(),

            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue),
              ),
            ),

          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_caroussel,
          new Padding(
            padding:EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),

          // Horizontal listview begins here
          HorizontalList(),
          
          //padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
          child: new Text('Recents products'),),

          //Gridview
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

