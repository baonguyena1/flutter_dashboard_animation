import 'package:flutter/material.dart';

class AvatarContainer extends StatefulWidget {
  AvatarContainer({Key key}) : super(key: key);

  _AvatarContainerState createState() => _AvatarContainerState();
}

class _AvatarContainerState extends State<AvatarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 20,
                  left: 0,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset('assets/images/girl.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'My name is Maria Olala',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Rent Surfing',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}