import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olamundo/app_controller.dart';
import 'package:olamundo/location_finder.dart';
import 'package:olamundo/login_page.dart';

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
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              primaryColor: Colors.red,
              brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light
            ),
            // home: LoginPage(),
            initialRoute: "/location",
            routes: {
              "/": (context) => LoginPage(),
              '/home': (context) => HomePage(),
              "/location": (context) => LocationFinder()
            },
          );
        });
  }
}
