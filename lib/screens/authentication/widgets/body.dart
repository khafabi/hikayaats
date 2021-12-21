import 'package:hikayaats/screens/authentication/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: size.height * 0.08),
          SvgPicture.asset(
            "assets/icons/hikayaats.svg",
            height: size.height * 0.45,
          ),
          SizedBox(height: size.height * 0.05),
        ],
      ),
    );
  }
}
