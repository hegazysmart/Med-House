import 'package:flutter/material.dart';
import 'package:medhouse/model/category_model.dart';
import 'package:medhouse/screen/category_detailes.dart';

class CategoryItem extends StatefulWidget {
  final String id;
  final String title;
  final String image;
  final String rating;

  CategoryItem({Key key, this.id, this.title, this.image, this.rating});

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  void selectCategory(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => CategoryDetailes()));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.orange,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.network(
                widget.image,
                width: 100,
                height: 100,
              ),
            ),
            Text(
              widget.title,
              style: TextStyle(fontSize: 15, color: Colors.black),
            )
          ]),
        ),
      ),
    );
  }
}
