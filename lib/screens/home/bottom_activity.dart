import 'package:flutter/material.dart';

import 'activity_list.dart';
import 'activity_menu.dart';

class BottomActivity extends StatelessWidget {
  const BottomActivity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          ActivityMenu(),
          SizedBox(
            height: 20,
          ),
          ActivityList()
        ],
      ),
    );
  }
}
