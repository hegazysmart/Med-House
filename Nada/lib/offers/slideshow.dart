// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import '../data_provider.dart';
// import 'package:provider/provider.dart';
// class SlideShow extends StatefulWidget {
//   @override
//   _SlideShowState createState() => _SlideShowState();
// }

// class _SlideShowState extends State<SlideShow> {
//    CarouselController buttonCarouselController = CarouselController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Offers'),
//       ),
//       body: ChangeNotifierProvider<DataProvider>(
//         create: (context) => DataProvider(),
//         child: Consumer<DataProvider>(
//           builder: (buildContext, dataProvider, _) {
//          final List<Widget> imgSlider= dataProvider.data[i].
//             return (dataProvider.data != null)
//                 ? Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CarouselSlider(
//                           items: ,
//                           carouselController: buttonCarouselController,
//                           options: CarouselOptions(
//                             autoPlay: false,
//                             enlargeCenterPage: true,
//                             viewportFraction: 0.9,
//                             aspectRatio: 2.0,
//                             initialPage: 2,
//                           ),
//                         ),
//                         ElevatedButton(
//                           onPressed: () => buttonCarouselController.nextPage(
//                               duration: Duration(milliseconds: 300),
//                               curve: Curves.linear),
//                           child: Text('→'),
//                         ),
//                         ]  ),
//                         )
//                          : Center(child: CircularProgressIndicator());
//                         }

//                         )

//                         ),
//                         );

//   }
// }
