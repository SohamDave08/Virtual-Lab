import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Image(
            width: 250,
            image: AssetImage('images/VLLOGOWHITETEXT.png'),
          ),
          SizedBox(
            height: 10,
            width: double.infinity,
            child: Divider(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'HOME',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: 'FrostBiteNarrow',
                color: Colors.white),
          ),
          SizedBox(
            height: 10,
            width: 75,
            child: Divider(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'ABOUT US',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: 'FrostBiteNarrow',
                color: Colors.white),
          ),
          SizedBox(
            height: 10,
            width: 100,
            child: Divider(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'CONTACT US',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: 'FrostBiteNarrow',
                color: Colors.white),
          ),
          SizedBox(
            height: 10,
            width: 125,
            child: Divider(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
