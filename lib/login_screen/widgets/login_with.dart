import 'package:flutter/material.dart';

class LoginWith extends StatelessWidget {
  final String service;
  final Function performAction;
  LoginWith({this.service, this.performAction});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.performAction,
      borderRadius: BorderRadius.all(
        Radius.circular(70)
      ),
      radius: 70,
      child: Container(
        width: MediaQuery.of(context).size.width * .7,
        //margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2.0
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(70)
          )
        ),
        child: Text(
          this.service,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20
          )
        ),
      ),
    );
  }
}