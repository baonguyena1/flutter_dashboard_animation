import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SeeMoreButton extends StatefulWidget {
  SeeMoreButton({Key key}) : super(key: key);

  _SeeMoreButtonState createState() => _SeeMoreButtonState();
}

class _SeeMoreButtonState extends State<SeeMoreButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFC71C53), borderRadius: BorderRadius.circular(25)),
      height: 50,
      padding: const EdgeInsets.only(left: 16, right: 10),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(-1, 0),
            child: Text(
              'See More',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
          ),
          Align(
            alignment: Alignment(1, 0),
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.chevronCircleRight,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}