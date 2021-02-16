import 'package:feeder/Screens/Signup/signup_screen.dart';
import 'package:feeder/components/rounded_button.dart';
import 'package:feeder/constans.dart';
import 'package:flutter/material.dart';
import 'package:feeder/Screens/Wellcome/components/background.dart';
import 'package:lottie/lottie.dart';
import 'package:feeder/Screens/Login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // this size provide us total height and width of our screens

    final String assetPath = 'assets/icons/man_round.json';
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome To Feeding",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.001,
            ),
            Container(
              child: Lottie.asset(assetPath),
            ),
            SizedBox(
              height: size.height * 0.001,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
