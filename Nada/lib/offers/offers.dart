import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import '../data_provider.dart';
import 'package:provider/provider.dart';

import '../model/data.dart';
import 'viewall_offers.dart';

class Offers extends StatefulWidget {
  final Data data;

  const Offers({Key key, this.data}) : super(key: key);

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  // CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offers'),
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
                        // CarouselSlider(
                        //   items: dataProvider.data[i].image,
                        //   carouselController: buttonCarouselController,
                        //   options: CarouselOptions(
                        //     autoPlay: false,
                        //     enlargeCenterPage: true,
                        //     viewportFraction: 0.9,
                        //     aspectRatio: 2.0,
                        //     initialPage: 2,
                        //   ),
                        // ),
                        // ElevatedButton(
                        //   onPressed: () => buttonCarouselController.nextPage(
                        //       duration: Duration(milliseconds: 300),
                        //       curve: Curves.linear),
                        //   child: Text('→'),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "MedHouse Choices",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Color(0xff0fb8b3),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ViewAllOffers()),
                                  );
                                },
                                child: Text(
                                  'View All',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 8,
                          child: Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: dataProvider.data.length - 7,
                              itemBuilder: (BuildContext context, int i) =>
                                  Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Center(
                                  child: Image.network(
                                      '${dataProvider.data[i].image}',
                                      fit: BoxFit.contain),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, bottom: 20),
                          child: Text(
                            'Todays offers',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
