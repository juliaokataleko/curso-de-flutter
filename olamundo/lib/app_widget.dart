import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Center(
    //     child: Text(
    //       title,
    //       textDirection: TextDirection.ltr,
    //       style: TextStyle(color: Colors.blue, fontSize: 35.0),
    //     ),
    //   ),
    // );

    // using material design
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: HomePage(),
    );
  }
}