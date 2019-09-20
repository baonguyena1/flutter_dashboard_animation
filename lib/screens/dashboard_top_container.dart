import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

import 'avatar_container.dart';

class DashBoardTopContainer extends StatefulWidget {
  DashBoardTopContainer({Key key}) : super(key: key);

  _DashBoardTopContainerState createState() => _DashBoardTopContainerState();
}

class _DashBoardTopContainerState extends State<DashBoardTopContainer>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  SequenceAnimation _sequenceAnimation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    _initialSequenceAnimation();
    super.initState();
    _controller.forward();
  }

  _initialSequenceAnimation() {
    _sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
            animatable: Tween<double>(begin: 0, end: 300),
            from: const Duration(milliseconds: 0),
            to: const Duration(milliseconds: 200),
            tag: 'container_height')
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget child) => Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: _sequenceAnimation['container_height'].value,
                    decoration: BoxDecoration(
                        color: Color(0xFFE7CB2F),
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(30))),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    child: Column(
                      children: <Widget>[
                        AvatarContainer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            height: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ));
  }
}
