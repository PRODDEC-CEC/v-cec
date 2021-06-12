//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
//import 'package:proddeccec/Screen/addevent.dart';
import 'package:proddeccec/Screen/home.dart';
import 'package:firebase_core/firebase_core.dart';




void main()
//=>
  async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  runApp(
    //DevicePreview(
  //builder: (context) => 
 
  MyApp(),
//),
);

}
class MyApp extends StatelessWidget {

  @override
 
    
    
  Widget build(BuildContext context) {

    return MaterialApp(
      
    // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'V-CEC',
           home: 
      HomePage()
       );
  }
}


// Created By Arjun Vishnu Varma //