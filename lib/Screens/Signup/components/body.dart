import 'package:feeder/Screens/Login/login_screen.dart';
import 'package:feeder/Screens/Signup/components/background.dart';
// ignore: unused_import
import 'package:feeder/Screens/Signup/components/or_divider.dart';
// ignore: unused_import
import 'package:feeder/Screens/Signup/components/social_icon.dart';
import 'package:feeder/components/already_haven_ac_account_check.dart';
import 'package:feeder/components/rounded_button.dart';
import 'package:feeder/components/rounded_input_field.dart';
import 'package:feeder/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final String assetPath = 'assets/icons/login.json';
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              child: Lottie.asset(assetPath),
            ),
            RoundedInputField(
              hintText: "Your Email..",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHavenAnAccountCheck(
              login: false,
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
            // OrDivider(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     SocialIcon(
            //       iconSrc: "assets/icons/facebook.svg",
            //       press: () {},
            //     ),
            //     SocialIcon(
            //       iconSrc: "assets/icons/twitter.svg",
            //       press: () {},
            //     ),
            //     SocialIcon(
            //       iconSrc: "assets/icons/google-plus.svg",
            //       press: () {},
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
