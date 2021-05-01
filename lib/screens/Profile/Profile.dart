import 'package:flutter/material.dart';
import 'package:medhouse/Profile/create_post.dart';
import 'package:provider/provider.dart';
import '../data_provider.dart';
import 'customers.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Color(0xff0fb8b3),
        ),
        body: ChangeNotifierProvider<DataProvider>(
            create: (context) => DataProvider(),
            child: Consumer<DataProvider>(
                builder: (buildContext, dataProvider, _) {
              return (dataProvider.data != null)
                  ? SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: Image(
                                                image: NetworkImage(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvb-EdcyOYIYcdeu_ko7o8_RaUDA38aaaNjfSup0JxH24z9llG&s'),
                                                width: 68,
                                                height: 68,
                                              ),
                                            ),
                                            Positioned(
                                              right: 34,
                                              bottom: 13,
                                              child: IconButton(
                                                icon: Icon(Icons.camera_alt),
                                                color: Color(0xff0fb8b3),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'John Doe',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'San Francisco, CA',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('+9'),
                                        Icon(Icons.message_outlined,
                                            color: Color(0xff0fb8b3)),
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25, bottom: 25),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Name: ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('John'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('Location: ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          Text('San Francisco'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('Spicialist: ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          Text('Doctor')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff0fb8b3),
                                          onPrimary: Colors.white,
                                        ),
                                        onPressed: () {},
                                        child: Center(
                                            child: Text(
                                          'Message',
                                        ))),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff0fb8b3),
                                          onPrimary: Colors.white,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Customers()),
                                          );
                                        },
                                        child: Center(
                                            child: Text(
                                          'Customers',
                                        ))),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff0fb8b3),
                                          onPrimary: Colors.white,
                                        ),
                                        onPressed: () {},
                                        child: Center(
                                            child: Text(
                                          'Filtter',
                                        ))),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, bottom: 30),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Last Postes",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        FloatingActionButton(
                                          backgroundColor: Colors.indigo[700],
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CreatePost()),
                                            );
                                          },
                                          child: Center(
                                              child: Text('+',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ))),
                                        ),
                                      ]),
                                ),
                                ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: dataProvider.data.length,
                                    itemBuilder: (cxt, i) {
                                      return Column(
                                        children: [
                                          Card(
                                            child: Column(
                                              children: [
                                                Center(
                                                  child: Wrap(
                                                    children:
                                                        List<Widget>.generate(
                                                            dataProvider.data[i]
                                                                .genre.length,
                                                            (index) {
                                                      return Text(
                                                        //category
                                                        dataProvider.data[i]
                                                            .genre[index],
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      );
                                                    }),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5, bottom: 5),
                                                  child: Image.network(
                                                      '${dataProvider.data[i].image}',
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2,
                                                      fit: BoxFit.cover),
                                                ),
                                                Container(
                                                  color: Color(0xff0fb8b3),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 18,
                                                                  right: 22),
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                  Icons
                                                                      .favorite,
                                                                  color: Colors
                                                                      .white),
                                                              Text('207',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white))
                                                            ],
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(Icons.comment,
                                                                color: Colors
                                                                    .white),
                                                            Text(
                                                              '97',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                        ],
                                      );
                                    }),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : Center(child: CircularProgressIndicator());
            })));
  }
}
