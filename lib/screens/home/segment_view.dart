import 'package:flutter/material.dart';

class SegmentView extends StatefulWidget {
  SegmentView({Key key}) : super(key: key);

  _SegmentViewState createState() => _SegmentViewState();
}

class _SegmentViewState extends State<SegmentView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SegmentItem(
            isActive: true,
            title: 'Surfling',
          ),
          SegmentItem(
            isActive: false,
            title: 'Snowboard',
          ),
          SegmentItem(
            isActive: false,
            title: 'Selling',
          )
        ],
      ),
    );
  }
}

class SegmentItem extends StatelessWidget {
  const SegmentItem({@required this.isActive, @required this.title, Key key})
      : super(key: key);

  final bool isActive;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isActive ? Color(0xFFE7CB2F) : Colors.transparent,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
