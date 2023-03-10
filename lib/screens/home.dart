import 'package:flutter/material.dart';
import 'package:travel_app/shared/screenTitle.dart';
import 'package:travel_app/shared/tripList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"), 
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            SizedBox(
              height: 160,
              child: ScreenTitle(text: 'Travel To Live'),
            ),
            Flexible(
              child: TripList(),
            )
            //Sandbox(),
          ],
        )
      )
    );
  }
}

