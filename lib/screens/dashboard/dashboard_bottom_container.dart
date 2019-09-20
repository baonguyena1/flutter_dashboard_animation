import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

import 'dashboard_item.dart';
import 'see_more_button.dart';

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
            Container(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
              child: SeeMoreButton(),
            ),
          ],
        ),
      ),
    );
  }
}
