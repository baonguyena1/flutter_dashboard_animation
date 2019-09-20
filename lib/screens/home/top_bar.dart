import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text('Top Activity',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Icon(
            FontAwesomeIcons.calendarAlt,
            color: Colors.black26,
            size: 20,
          )
        ],
      ),
    );
  }
}
