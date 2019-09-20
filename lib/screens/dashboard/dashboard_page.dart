import 'package:flutter/material.dart';
import 'dashboard_bottom_container.dart';
import 'dashboard_top_container.dart';

class DashBoardPage extends StatelessWidget {
  static const routeName = '/dashboard';

  const DashBoardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: false,
          bottom: false,
          child: Container(
              child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  DashBoardTopContainer(),
                  DashBoardBottomContainer()
                ],
              ),
            ],
          ))),
    );
  }
}
