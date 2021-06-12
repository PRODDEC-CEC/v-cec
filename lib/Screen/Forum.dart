import 'package:flutter/material.dart';
import 'package:proddeccec/Screen/forum/addEvent/iedc/iedc.dart';
import 'package:proddeccec/Screen/forum/addEvent/ieee/ieee.dart';
import 'package:proddeccec/Screen/forum/addEvent/ncc/ncc.dart';
import 'package:proddeccec/Screen/forum/addEvent/nss/nss.dart';
import 'package:proddeccec/Screen/forum/addEvent/exess/exess.dart';
import 'package:proddeccec/Screen/forum/addEvent/arc/arc.dart';
import 'package:proddeccec/Screen/forum/addEvent/foces/foces.dart';
import 'package:proddeccec/Screen/forum/addEvent/surge/surge.dart';
import 'package:proddeccec/Screen/forum/addEvent/proddec/proddec.dart';
import 'package:proddeccec/backend/size_config.dart';

class Forum extends StatefulWidget {
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;

    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forums',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        child: isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.height * .01),
                      child: FlatButton(
                          highlightColor: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event1()),
                            );
                          },
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * .04),
                              child: Container(
                                width: MediaQuery.of(context).size.width * .2,
                                height:
                                    MediaQuery.of(context).size.height * .09,
                                child: Image(
                                  image: AssetImage("images/logo.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * .09),
                              child: Text(
                                "PRODDEC",
                                style: TextStyle(
                                  fontFamily: 'Lekton',
                                  fontWeight: FontWeight.w700,
                                  fontSize: SizeConfig.safeBlockHorizontal * 6,
                                ),
                              ),
                            ),
                          ]))),
                  Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.height * .01),
                      child: FlatButton(
                          highlightColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event2()),
                            );
                          },
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * .04),
                              child: Container(
                                width: MediaQuery.of(context).size.width * .2,
                                height:
                                    MediaQuery.of(context).size.height * .09,
                                child: Image(
                                  image: AssetImage("images/Nss.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * .09),
                              child: Text(
                                "NSS",
                                style: TextStyle(
                                  fontFamily: 'Lekton',
                                  fontWeight: FontWeight.w700,
                                  fontSize: SizeConfig.safeBlockHorizontal * 6,
                                ),
                              ),
                            ),
                          ]))),
                  Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.height * .01),
                      child: FlatButton(
                          highlightColor: Colors.blue[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event4()),
                            );
                          },
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * .04),
                              child: Container(
                                width: MediaQuery.of(context).size.width * .2,
                                height:
                                    MediaQuery.of(context).size.height * .09,
                                child: Image(
                                  image: AssetImage("images/Ieee.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * .09),
                              child: Text(
                                "IEEE",
                                style: TextStyle(
                                  fontFamily: 'Lekton',
                                  fontWeight: FontWeight.w700,
                                  fontSize: SizeConfig.safeBlockHorizontal * 6,
                                ),
                              ),
                            ),
                          ]))),
                  Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.height * .01),
                      child: FlatButton(
                          highlightColor: Colors.grey[400],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event3()),
                            );
                          },
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * .04),
                              child: Container(
                                width: MediaQuery.of(context).size.width * .2,
                                height:
                                    MediaQuery.of(context).size.height * .09,
                                child: Image(
                                  image: AssetImage("images/ncc.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * .09),
                              child: Text(
                                "NCC",
                                style: TextStyle(
                                  fontFamily: 'Lekton',
                                  fontWeight: FontWeight.w700,
                                  fontSize: SizeConfig.safeBlockHorizontal * 6,
                                ),
                              ),
                            ),
                          ]))),
                  Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.height * .01),

                      child: FlatButton(
                          highlightColor: Colors.grey[350],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event6()),
                            );
                          },
                          child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          .04),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .2,
                                    height: MediaQuery.of(context).size.height *
                                        .09,
                                    child: Image(
                                      image: AssetImage("images/foces.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          .09),
                                  child: Text(
                                    "FOCES",
                                    style: TextStyle(
                                      fontFamily: 'Lekton',
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 6,
                                    ),
                                  ),
                                ),
                              ]))),
                  Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.height * .01),

                    
                      child: FlatButton(
                          highlightColor: Colors.blue[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event5()),
                            );
                          },
                          child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          .04),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .2,
                                    height: MediaQuery.of(context).size.height *
                                        .09,
                                    child: Image(
                                      image: AssetImage("images/iedc.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          .09),
                                  child: Text(
                                    "IEDC",
                                    style: TextStyle(
                                      fontFamily: 'Lekton',
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 6,
                                    ),
                                  ),
                                ),
                              ]))),
                  Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.height * .01),

                      
                      child: FlatButton(
                          highlightColor: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event7()),
                            );
                          },
                          child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          .04),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .2,
                                    height: MediaQuery.of(context).size.height *
                                        .09,
                                    child: Image(
                                      image: AssetImage("images/arc.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          .09),
                                  child: Text(
                                    "ARC",
                                    style: TextStyle(
                                      fontFamily: 'Lekton',
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 6,
                                    ),
                                  ),
                                ),
                              ]))),
                  Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.height * .01),

                     
                      child: FlatButton(
                          highlightColor: Colors.brown,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event9()),
                            );
                          },
                          child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          .04),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .2,
                                    height: MediaQuery.of(context).size.height *
                                        .09,
                                    child: Image(
                                      image: AssetImage("images/surge.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          .09),
                                  child: Text(
                                    "SURGE",
                                    style: TextStyle(
                                      fontFamily: 'Lekton',
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 6,
                                    ),
                                  ),
                                ),
                              ]))),
                  Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.height * .01),

                     
                      child: FlatButton(
                          highlightColor: Colors.blueGrey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event8()),
                            );
                          },
                          child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          .04),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .2,
                                    height: MediaQuery.of(context).size.height *
                                        .09,
                                    child: Image(
                                      image: AssetImage("images/exess.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          .09),
                                  child: Text(
                                    "EXESS",
                                    style: TextStyle(
                                      fontFamily: 'Lekton',
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 6,
                                    ),
                                  ),
                                ),
                              ]))),
                ],
              ),
      ),
    );
  }
}
