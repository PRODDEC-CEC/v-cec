import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proddeccec/Screen/notification/login.dart';
import 'package:proddeccec/backend/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';




class Notify extends StatefulWidget {
  
  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {

  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notice',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
         actions: [
           
           
          IconButton(
            
            icon: Icon(Icons.add),
            onPressed:(){ 
              Navigator.push(
                         context,
                     MaterialPageRoute(
                          builder: (context) =>
                             LoginPage()
                    ),
                    );
            } ,
          )
        ],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          //back button colour
          color: Colors.black,
        ),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('eNotification').snapshots(),
          builder:
              (BuildContext context,  snapshot) {
            if (!snapshot.hasData) {
              return Center(
                  child: new Text('Loading....',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lekton',
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0)));
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot myNotify = snapshot.data.documents[index];

                    _launchURL1() async {
                      final url = myNotify.data()['link1'];
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }

                    _launchURL2() async {
                      final url = myNotify.data()['link2'];
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }

                     _launchURL3() async {
                      final url = myNotify.data()['link3'];
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }


                    return Container(
                      margin: EdgeInsets.all(10.0),
                      child: Card(
                        shadowColor: Colors.grey,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.02),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: SizeConfig.safeBlockHorizontal * SizeConfig.screenWidth,
                              height: SizeConfig.safeBlockVertical * 18,
                              child: Image(
                                image: AssetImage("images/cec1.jpg"),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(MediaQuery.of(context).size.height * .01),
                              child: Text(
                                myNotify.data()['title'], style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lekton',
                                fontWeight: FontWeight.w700,
                                fontSize: MediaQuery.of(context).size.height * .03,

                              ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(MediaQuery.of(context).size.height * .01),
                              child: Center(
                                child: Text(
                                  myNotify.data()['details'], style: TextStyle(
                                  fontFamily: 'Lekton',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blueGrey,
                                  fontSize: MediaQuery.of(context).size.height * .017,
                                ),
                                ),
                              ),
                            ),

                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FlatButton(
                                      onPressed: _launchURL1,
                                      child: Text(
                                        myNotify.data()['button1'],
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blue,
                                          fontSize: MediaQuery.of(context).size.height *.024,
                                        ),
                                      )),
                                  FlatButton(
                                      onPressed: _launchURL2,
                                      child: Text(
                                        myNotify.data()['button2'],
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blue,
                                          fontSize: MediaQuery.of(context).size.height *.024,
                                        ),
                                      )),
                                      FlatButton(
                                      onPressed: _launchURL3,
                                      child: Text(
                                        myNotify.data()['button3'],
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blue,
                                          fontSize: MediaQuery.of(context).size.height *.024,
                                        ),
                                      )),
                                ])
                          ],
                        ),

                      ),
                    );
                  });
            }
          }),
    );
  }
}


// Developed by Arjun Vishnu Varma.
// Date: August 2020.
// Contact: arjun.varma9@gmail.com
// On behalf: PRODDEC CEC @ 2020