import 'package:flutter/material.dart';

class ScanIDScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          //Expanded(
          Container(
            height: deviceHeight * 0.05,
          ),
          //),
          //Expanded(
          Container(
            padding: EdgeInsets.all(30.0),
            height: deviceHeight * 0.15,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Scan your FAU ID',
                style: TextStyle(fontSize: 20, color: Colors.lightBlue),
              ),
            ),
          ),
          // ),
          //Expanded(
          Container(
            margin: EdgeInsets.all(10.0),
            width: deviceWidth * 0.90,
            height: deviceHeight * 0.4,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "FLORIDA ATLANTIC UNIVERSITY",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          //),
          //Expanded(
          Container(
            margin: EdgeInsets.all(10.0),
            width: deviceWidth * 0.90,
            height: deviceHeight * 0.15,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: Colors.grey,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  "Point the camera to the front of your ID and wait for scanning",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          //),
        ],
      ),
    );
  }
}
