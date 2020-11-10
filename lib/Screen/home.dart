import 'package:flutter/material.dart';
import 'package:proddeccec/backend/size_config.dart';
import 'package:proddeccec/Screen/firstpage.dart';
//import 'package:responsive_builder/responsive_builder.dart';
//import 'package:proddeccec/responsive/ui/base_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:
          // Center(child:Text(sizingInformation.toString()),),
          FirstPage(),
     
    );
  }
}
