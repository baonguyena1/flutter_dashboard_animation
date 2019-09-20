import 'package:flutter/material.dart';

import 'activity_info.dart';
import 'segment_view.dart';
import 'top_bar.dart';
import 'bottom_activity.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homepage';

  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              TopBar(),
              SizedBox(
                height: 20,
              ),
              SegmentView(),
              SizedBox(
                height: 20,
              ),
              ActivityInfo(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
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
              ),
              BottomActivity()
            ],
          ),
        ),
      ),
    );
  }
}
