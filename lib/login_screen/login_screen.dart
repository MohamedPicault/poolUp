import 'package:flutter/material.dart';
import 'package:pool_up/login_screen/widgets/login_with.dart';
import 'package:pool_up/login_screen/views/phone_login.dart';
import 'package:pool_up/login_screen/views/facebook_login.dart';

class LoginScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(top: 110),
                  child: Text(
                    "POOL UP",
                    style: TextStyle(
                      fontSize: 70,
                      color: Colors.grey
                    )
                  ),
                )
              ),
              /// This is an empty box used for spacing.
              /// There is probably a better way to do this.
              Expanded(
                flex: 3,
                child: Container(

                )
              ),
              Flexible(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width * .8,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "By tapping Log In, you agree with our Terms of Service and Privacy Policy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.lightBlue
                    )
                  )
                )
              ),
              Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Text(
                    "Create new account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      decoration: TextDecoration.underline
                    )
                  ),
                )
              ),
              Flexible(
                flex: 1,
                child: LoginWith(
                  service: "Login with Phone Number",
                  performAction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhoneLogin())
                    );
                  }
                ),
              ),
              /// Another container instance to add spacing between the two Login Buttons
              Container(
                margin: EdgeInsets.all(10)
              ),
              Flexible(
                flex: 1,
                child: LoginWith(
                  service: "Login with Facebook",
                  performAction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FacebookLogin())
                    );
                  }
                ),
              )
            ],
          )
        )
      )
    );
  }
}
