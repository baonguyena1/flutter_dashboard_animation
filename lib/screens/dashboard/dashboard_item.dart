import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoardItem extends StatelessWidget {
  const DashBoardItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                width: 30,
                height: 60,
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFF3C3B42)),
                child: Align(
                  alignment: Alignment(0, 0),
                  child: Text(
                    '2',
                    style: TextStyle(
                        fontWeight: FontWeight.w900, color: Colors.white),
                  ),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'USA',
                              style: TextStyle(color: Colors.black54),
                            ),
                            flex: 8,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment(1, 0),
                              child: Icon(
                                FontAwesomeIcons.star,
                                color: Colors.grey,
                                size: 15,
                              ),
                            ),
                            flex: 2,
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Rent Surfing on Califonia',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Price: 1000.0',
                              style: TextStyle(color: Colors.black54),
                            ),
                            flex: 8,
                          ),
                          Expanded(
                            child: Text(
                              'More',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey[600],
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              flex: 9,
            ),
          ],
        ),
      ),
    );
  }
}
