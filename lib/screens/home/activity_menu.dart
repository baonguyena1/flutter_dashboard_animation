import 'package:dashboard_animation/screens/dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityMenu extends StatefulWidget {
  ActivityMenu({Key key}) : super(key: key);

  _ActivityMenuState createState() => _ActivityMenuState();
}

class _ActivityMenuState extends State<ActivityMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ActivityMenuItem(
                    isSelected: false,
                    title: 'Day',
                  ),
                  ActivityMenuItem(
                    isSelected: true,
                    title: 'Week',
                  ),
                  ActivityMenuItem(
                    isSelected: false,
                    title: 'Month',
                  ),
                ],
              ),
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
                alignment: Alignment(1, 0),
                child: InkWell(
                  child: Icon(
                    FontAwesomeIcons.plusCircle,
                    size: 40,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, DashBoardPage.routeName);
                  },
                )),
            flex: 1,
          )
        ],
      ),
    );
  }
}

class ActivityMenuItem extends StatelessWidget {
  const ActivityMenuItem(
      {@required this.isSelected, @required this.title, Key key})
      : super(key: key);

  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(title,
            style: TextStyle(
                color: isSelected ? Colors.black : Colors.black26,
                fontWeight: FontWeight.w600)),
        SizedBox(
          height: 2,
        ),
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: isSelected ? Colors.black : Colors.transparent),
        ),
      ],
    );
  }
}
