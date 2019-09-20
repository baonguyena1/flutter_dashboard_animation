import 'package:dashboard_animation/screens/dashboard/index.dart';
import 'package:dashboard_animation/screens/home/index.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        DashBoardPage.routeName: (context) => DashBoardPage(),
        HomePage.routeName: (context) => HomePage()
      },
    );
  }
}