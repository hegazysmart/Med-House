import 'package:flutter/material.dart';
import 'package:medhouse/screen/provider.dart';
import 'package:medhouse/widget/category_item.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ChangeNotifierProvider<DataProvider>(
        create: (context) => DataProvider(),
        child: Consumer<DataProvider>(
          builder: (buildContext, dataProvider, _) {
            return (dataProvider.data != null)
                ? GridView(
                    children: dataProvider.data
                        .map((catDate) => CategoryItem(
                              title: catDate.title,
                              image: catDate.image,
                              rating:catDate.rating.toString(),

                            ))
                        .toList(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        crossAxisSpacing: 3,
                        childAspectRatio: 1,
                        mainAxisSpacing: 3),
                  )
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
