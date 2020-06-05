import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Category(
            image_caption: 'acessories',
            image_location: 'images/cats/accessories.png',
          ),
          new Category(
            image_caption: 'dress',
            image_location: 'images/cats/dress.png',
          ),
          new Category(
            image_caption: 'shirt',
            image_location: 'images/cats/tshirt.png',
          ),
          new Category(
            image_caption: 'formal',
            image_location: 'images/cats/formal.png',
          ),
          new Category(
            image_caption: 'informal',
            image_location: 'images/cats/informal.png',
          ),
          new Category(
            image_caption: 'jeans',
            image_location: 'images/cats/jeans.png',
          ),
          new Category(
            image_caption: 'shoes',
            image_location: 'images/cats/shoe.png',
          ),

        ],
      ),
    );
  }
}


class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_caption,
    this.image_location,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location, width: 100.0, height: 80.0),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}
