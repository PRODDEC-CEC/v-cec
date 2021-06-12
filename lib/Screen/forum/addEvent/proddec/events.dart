import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proddeccec/Screen/forum/addEvent/proddec/addevent.dart';
import 'package:proddeccec/backend/size_config.dart';
import 'package:url_launcher/url_launcher.dart';

class EventLister extends StatefulWidget {
  @override
  _EventListerState createState() => _EventListerState();
}

class _EventListerState extends State<EventLister> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProfilePage()));
        },
        child: Container(
          padding: EdgeInsets.all(10),
          width: 120,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black12,
          ),
          child: Row(
            children: [
              Icon(
                Icons.add,
                color: Colors.black,
              ),
              Text(
                "Add Events",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Events',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w700,
            // fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('eproddec').snapshots(),
          builder:
              // ignore: missing_return
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: new Text('No Event'));
            } else if (snapshot.hasError) {
              const Text('No data avaible right now');
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot myEvent = snapshot.data.docs[index];

                    _launchURL1() async {
                      final url = myEvent.data()['link1'];
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }

                    _launchURL2() async {
                      final url = myEvent.data()['link2'];
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }

                    return ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        // scrollDirection: Axis.vertical,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(
                                SizeConfig.safeBlockHorizontal * 4),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Material(
                                    borderRadius: BorderRadius.circular(26.0),
                                    elevation: 4.0,
                                    shadowColor: Colors.grey,
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          width:
                                              SizeConfig.safeBlockHorizontal *
                                                  35,
                                          height:
                                              SizeConfig.safeBlockHorizontal *
                                                  40.5,
                                          child: ClipRRect(
                                            borderRadius:
                                                new BorderRadius.circular(24.0),
                                            child: Image.network(
                                              myEvent.data()['image'],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: SizeConfig
                                                      .safeBlockHorizontal *
                                                  2),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .005,
                                                  top: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      .02,
                                                ),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: <Widget>[
                                                      Container(
                                                          child: Text(
                                                        myEvent.data()['name'],
                                                        style: TextStyle(
                                                          fontFamily: 'Ubuntu',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.black,
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .020,
                                                        ),
                                                      )),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            bottom: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                .005,
                                                            top: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .02,
                                                          ),
                                                          child: Text(
                                                            myEvent.data()[
                                                                'details'],
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Lekton',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Colors
                                                                  .black54,
                                                              fontSize: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  .012,
                                                            ),
                                                          )),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            bottom: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                .005,
                                                            top: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .01,
                                                          ),
                                                          child: Text(
                                                            myEvent
                                                                .data()['date'],
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Colors
                                                                  .blueGrey,
                                                              fontSize: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  .021,
                                                            ),
                                                          )),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: <Widget>[
                                                          FlatButton(
                                                              onPressed:
                                                                  _launchURL1,
                                                              child: Text(
                                                                myEvent.data()[
                                                                    'button1'],
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Ubuntu',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Colors
                                                                      .blue,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .016,
                                                                ),
                                                              )),
                                                          FlatButton(
                                                              onPressed:
                                                                  _launchURL2,
                                                              child: Text(
                                                                myEvent.data()[
                                                                    'button2'],
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Ubuntu',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Colors
                                                                      .blue,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .016,
                                                                ),
                                                              )),
                                                        ],
                                                      )
                                                    ]),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(top: 100),
                                            child: Align(
                                              alignment: Alignment.topRight,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    FirebaseFirestore
                                                        .instance
                                                        .collection(
                                                        "eproddec")
                                                        .where(
                                                        "name",
                                                        isEqualTo: myEvent.data()[
                                                        'name'])
                                                        .get()
                                                        .then(
                                                            (value) {
                                                          value.docs
                                                              .forEach(
                                                                  (element) {
                                                                FirebaseFirestore
                                                                    .instance
                                                                    .collection("eproddec")
                                                                    .doc(element.id)
                                                                    .delete()
                                                                    .then((value) {
                                                                  print(
                                                                      "Success!");
                                                                });
                                                              });
                                                        });
                                                  },
                                                  child: Icon(Icons.delete)),
                                            ))
                                      ],
                                    ))),
                          )
                        ]);
                  });
            }
          }),
    );
  }
}
