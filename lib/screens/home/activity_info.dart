import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityInfo extends StatelessWidget {
  const ActivityInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('2.453',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Text(
                  'Minutes',
                  style: TextStyle(color: Colors.black38),
                )
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                'profile',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                FontAwesomeIcons.user,
                size: 14,
                color: Colors.black54,
              )
            ],
          )
        ],
      ),
    );
  }
}