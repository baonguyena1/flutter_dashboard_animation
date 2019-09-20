import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/girl.png',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}