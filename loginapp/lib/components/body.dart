import 'package:flutter/material.dart';
import 'package:loginapp/Screens/Login/login_screen.dart';
import 'package:loginapp/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginapp/components/rounded_button.dart';
import 'package:loginapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'WELCOME TO TUK',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        SvgPicture.asset(
          "assets/icons/chat.svg",
          height: size.height * 0.45,
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        RoundedButton(
          text: "LOGIN",
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreen();
            }));
          },
          color: kPrimaryColor,
          textColor: Colors.white,
        ),
        RoundedButton(
          text: "SIGN UP",
          press: () {},
          color: kPrimaryLightColor,
          textColor: Colors.black,
        )
      ],
    )));
  }
}
