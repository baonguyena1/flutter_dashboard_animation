import 'package:dashboard_animation/screens/see_more_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoardBottomContainer extends StatefulWidget {
  DashBoardBottomContainer({Key key}) : super(key: key);

  _DashBoardBottomContainerState createState() =>
      _DashBoardBottomContainerState();
}

class _DashBoardBottomContainerState extends State<DashBoardBottomContainer>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  SequenceAnimation _sequenceAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _initialSequenceAnimation();
    _controller.forward();
  }

  _initialSequenceAnimation() {
    _sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
            animatable: Tween<double>(begin: -40, end: 20),
            from: const Duration(milliseconds: 0),
            to: const Duration(milliseconds: 300),
            tag: 'see_more_bottom')
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) => DashBoardItem(),
              ),
              flex: 8,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SeeMoreButton(),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

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
                              style: TextStyle(color: Colors.grey),
                            ),
                            flex: 8,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment(1, 0),
                              child: Icon(
                                FontAwesomeIcons.star,
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
                          color: Colors.grey,
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
                              style: TextStyle(color: Colors.grey),
                            ),
                            flex: 8,
                          ),
                          Expanded(
                            child: Text(
                              'More',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
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
