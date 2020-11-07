import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginapp/Screens/Login/components/background.dart';
import 'package:loginapp/components/rounded_button.dart';
import 'package:loginapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedInput(
            color: kPrimaryColor,
            text: "Your Email",
            icons: Icons.person,
            onChanged: (value) {},
          ),
          RoundedInputPassword(
            color: kPrimaryColor,
            icons1: Icons.lock,
            icons2: Icons.visibility,
            onChanged: (value) {},
            text: "Password",
          ),
          RoundedButton(
            textColor: Colors.white,
            color: kPrimaryColor,
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an Account ? ",
                style: TextStyle(color: kPrimaryColor),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Sign Up ",
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class RoundedInput extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icons;
  final ValueChanged<String> onChanged;
  const RoundedInput({
    this.color,
    this.text,
    this.icons,
    this.onChanged,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(icons, color: color),
            hintText: text,
            border: InputBorder.none),
      ),
    );
  }
}

class RoundedInputPassword extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icons1;
  final IconData icons2;
  final ValueChanged<String> onChanged;
  const RoundedInputPassword({
    this.color,
    this.text,
    this.icons1,
    this.icons2,
    this.onChanged,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: text,
            border: InputBorder.none,
            icon: Icon(
              icons1,
              color: color,
            ),
            suffixIcon: Icon(
              icons2,
              color: color,
            )),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    this.child,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
