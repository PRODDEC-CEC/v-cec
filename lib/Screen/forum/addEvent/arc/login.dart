import 'package:flutter/material.dart';
import 'package:proddeccec/Screen/forum/addEvent/arc/addevent.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proddeccec/Screen/forum/addEvent/arc/events.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  //final databaseReference = FirebaseFirestore.instance;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  String name1;
  String name2;
  //Future admin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Admin',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w700,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: FutureBuilder(
                    future: LoadStories(),

                    // .snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<DocumentSnapshot> snapshot) {
                      if (!snapshot.hasData) {
                        return Center(child: new Text(''));
                      } else {
                        Map<String, dynamic> data = snapshot.data.data();
                        String id = data['Id'];
                        String password = data['password'];

                        return Center(
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                ),
                                child: Material(
                                  borderRadius: BorderRadius.circular(26.0),
                                  elevation: 20.0,
                                  shadowColor: Color(0x802196F3),
                                  child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          .7,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              .8,
                                      padding: EdgeInsets.all(
                                          MediaQuery.of(context).size.width *
                                              .09),
                                      child: Form(
                                        key: _formKey,
                                        child: SingleChildScrollView(
                                            child: Column(children: <Widget>[
                                          TextFormField(
                                            controller: nameController,
                                            decoration: InputDecoration(
                                                labelText: 'Username'),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            onChanged: (value) {
                                              setState(() {
                                                name1 = value;
                                              });
                                            },
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'Enter id';
                                              }
                                              return null;
                                            },
                                          ),
                                          TextFormField(
                                            controller: passwordController,
                                            decoration: InputDecoration(
                                                labelText: 'Password'),
                                            obscureText: true,
                                            onChanged: (value) {
                                              setState(() {
                                                name2 = value;
                                              });
                                            },
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'invalid password';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .05,
                                          ),
                                          RaisedButton(
                                            child: Text('Submit'),
                                            onPressed: () {
                                              //  print(id);
                                              // print(password);
                                              if (nameController.text == id &&
                                                  passwordController.text ==
                                                      password) {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          EventLister()),
                                                );
                                              } else {
                                                return Fluttertoast.showToast(
                                                    msg: 'Invalid',
                                                    toastLength:
                                                        Toast.LENGTH_LONG,
                                                    gravity:
                                                        ToastGravity.BOTTOM,
                                                    backgroundColor:
                                                        Colors.red[400],
                                                    textColor: Colors.white,
                                                    fontSize: 16.0);
                                                
                                              }
                                            },
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            color: Colors.grey,
                                          ),
                                        ])),
                                      )),
                                )));
                      }
                    }))));
  }

  Future<DocumentSnapshot> LoadStories() async {
    return await FirebaseFirestore.instance
        .collection('proddecAdmin')
        .doc('arc')
        .get();
  }
}
