import 'package:api_service/NewsApi/view/screen.dart';
import 'package:api_service/Views/Fakeapi.dart';
import 'package:api_service/Views/FruitScreens.dart';
import 'package:api_service/Views/LoginScreen.dart';
import 'package:api_service/Views/MoiveApp.dart';
import 'package:api_service/Views/MovieScreen.dart';
import 'package:api_service/Views/SecondScreen.dart';
import 'package:api_service/Views/third%20screen.dart';
import 'package:api_service/Views/uptodate.dart';
import 'package:flutter/material.dart';

import 'NewsApi/view/newsScreen.dart';
import 'Views/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.grey,
      ),
      home: Screen(),
    );

  }
}


