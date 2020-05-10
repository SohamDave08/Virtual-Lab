import 'package:animate_do/animate_do.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:turing/Widgets/card_child.dart';
import 'package:turing/Widgets/cards.dart';

class GrowingPlants extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 40,
          ),
        ),
        title: Image(
          height: 75,
          image: AssetImage('images/logo.png'),
        ),
      ),
      // drawer: Drawer(
      //   child: Container(
      //     color: Color(0xFF666666),
      //     child: DrawerWidget(),
      //   ),
      // ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 12,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Standard VII',
                    //textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DustismoRomanBold'),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 5,
              child: Cards(
                colour: Color(0xFFbdd4ff),
                childCard: CardChild(
                  text: '1. Growing \n plants from \n seeds',
                  wid: BounceInRight(
                    child: FlareActor(
                      'images/Plant new 3.flr',
                      //fit: BoxFit.contain,
                      animation: "plant",
                    ),
                  ),
                ),
              ),
            ),
            //
            //         ExpandablePanel(
            //   header: Text('TITLE'),
            //   collapsed: Text('BODY', softWrap: true, maxLines: 2, overflow: TextOverflow.ellipsis,),
            //   expanded: Text('EXPANDED BODY', softWrap: true, ),
            //   // tapHeaderToExpand: true,
            //   // hasIcon: true,
            // ),

            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                  child: Text(
                    'Experiment 1',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFffff99)),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                  child: Text(
                    'Experiment 2',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFffbed1),
              ),
            ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                  child: Text(
                    'Experiment 3',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFa5ffec)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
