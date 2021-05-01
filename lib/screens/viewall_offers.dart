import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data_provider.dart';

class ViewAllOffers extends StatefulWidget {
  @override
  _ViewAllOffersState createState() => _ViewAllOffersState();
}

class _ViewAllOffersState extends State<ViewAllOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MedHouse Offers'),
      ),
      body: ChangeNotifierProvider<DataProvider>(
        create: (context) => DataProvider(),
        child: Consumer<DataProvider>(
          builder: (buildContext, dataProvider, _) {
            return (dataProvider.data != null)
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Text(
                            'Offers',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: dataProvider.data.length,
                              itemBuilder: (cxt, i) {
                                final data = dataProvider.data[i];
                                return GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(2.0)),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
                                              child: Image.network(data.image,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      1.1,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      6,
                                                  fit: BoxFit.cover),
                                            ),
                                          ],
                                        ),
                                        Divider(),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  )
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
