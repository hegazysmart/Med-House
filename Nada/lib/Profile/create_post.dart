import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../data_provider.dart';
import 'Profile.dart';

class CreatePost extends StatefulWidget {
  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  String categoryValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create Post'),
          backgroundColor: Color(0xff0fb8b3),
        ),
        body:
            //  ChangeNotifierProvider<DataProvider>(
            //     create: (context) => DataProvider(),
            //     child: Consumer<DataProvider>(
            //         builder: (buildContext, dataProvider, _) {
            //       return (dataProvider.data != null)
            //           ? ListView.builder(
            //               shrinkWrap: true,
            //               itemCount: dataProvider.data.length,
            //               itemBuilder: (cxt, i) {
            //                 return Padding(
            //                   padding: const EdgeInsets.all(15.0),
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Padding(
            //                         padding:
            //                             const EdgeInsets.only(top: 20, bottom: 25),
            //                         child: Text(
            //                           'Create Post',
            //                           style: TextStyle(
            //                             fontWeight: FontWeight.bold,
            //                             fontSize: 24,
            //                           ),
            //                         ),
            //                       ),
            //                       Row(
            //                         children: [
            //                           Padding(
            //                             padding: const EdgeInsets.only(right: 30),
            //                             child: Text(
            //                               'Choose Category: ',
            //                             ),
            //                           ),
            //                           DropdownButton<String>(
            //                             dropdownColor: Colors.grey[100],
            //                             value: dataProvider.data[1].genre[1],
            //                             icon: const Icon(Icons.arrow_downward),
            //                             iconSize: 15,
            //                             elevation: 10,
            //                             underline: Container(
            //                               height: 2,
            //                               color: Color(0xff0fb8b3),
            //                             ),
            //                             onChanged: (String newValue) {
            //                               setState(() {
            //                                 categoryValue = newValue;
            //                               });
            //                             },
            //                             items: <String>[
            //                               'One',
            //                               'Two',
            //                               'three',
            //                               'Four'
            //                             ].map<DropdownMenuItem<String>>(
            //                                 (String value) {
            //                               return DropdownMenuItem<String>(
            //                                 value: value,
            //                                 child: Text(value),
            //                               );
            //                             }).toList(),
            //                           ),
            //                         ],
            //                       ),
            //                       TextFormField(
            //                         keyboardType: TextInputType.multiline,
            //                         maxLines: null,
            //                         decoration: InputDecoration(
            //                           hintText: "Add Description",
            //                         ),
            //                       ),
            //                       ElevatedButton.icon(
            //                           style: ElevatedButton.styleFrom(
            //                             primary: Color(0xff0fb8b3),
            //                             onPrimary: Colors.white,
            //                           ),
            //                           onPressed: () {},
            //                           icon: Icon(Icons.add_a_photo),
            //                           label: Text('Upload Photo')),
            //                       Center(
            //                           child: ElevatedButton(
            //                               style: ElevatedButton.styleFrom(
            //                                 primary: Colors.indigo[700],
            //                                 onPrimary: Colors.white,
            //                               ),
            //                               onPressed: () {},
            //                               child: Text('Post')))
            //                     ],
            //                   ),
            //                 );
            //               })
            //           : Center(child: CircularProgressIndicator());
            //     }))
            Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 25),
                child: Text(
                  'Create Post',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Add Description",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff0fb8b3),
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.add_a_photo),
                    label: Text('Upload Photo')),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      'Choose Category: ',
                    ),
                  ),
                  DropdownButton<String>(
                    dropdownColor: Colors.grey[100],
                    value: categoryValue,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 15,
                    elevation: 10,
                    underline: Container(
                      height: 2,
                      color: Color(0xff0fb8b3),
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        categoryValue = newValue;
                      });
                    },
                    items: <String>['One', 'Two', 'three', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[700],
                          onPrimary: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          );
                        },
                        child: Text('Post'))),
              )
            ],
          ),
        ));
  }
}
