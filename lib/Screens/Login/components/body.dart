import 'package:feeder/Screens/Login/components/background.dart';
import 'package:feeder/Screens/Signup/signup_screen.dart';
import 'package:feeder/components/already_haven_ac_account_check.dart';
import 'package:feeder/components/rounded_button.dart';
import 'package:feeder/components/rounded_input_field.dart';
import 'package:feeder/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // this size provide us total height and width of our screens

    final String assetPath = 'assets/icons/message.json';
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              child: Lottie.asset(assetPath),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            AlreadyHavenAnAccountCheck(
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
