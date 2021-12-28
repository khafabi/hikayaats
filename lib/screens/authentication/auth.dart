import 'package:hikayaats/screens/authentication/widgets/background.dart';
import 'package:hikayaats/screens/authentication/widgets/body.dart';
import 'package:hikayaats/screens/authentication/widgets/bottom_text.dart';
import 'package:hikayaats/screens/authentication/widgets/login.dart';
import 'package:hikayaats/screens/authentication/widgets/registration.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  bool _isLoginForm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Background(
            child: Body(),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.width / 1.3),
                Visibility(
                  visible: _isLoginForm,
                  child: LoginWidget(),
                ),
                Visibility(
                  visible: !_isLoginForm,
                  child: RegistrationWidget(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  // visible: _appController.isLoginWidgetDisplayed.value,
                  visible: _isLoginForm,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isLoginForm = !_isLoginForm;
                      });
                    },
                    child: RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: "Don\'t have an account?",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Create account!",
                            style: TextStyle(color: Colors.blue)),
                      ]),
                    ),
                  ),
                ),
                Visibility(
                  // visible: !_appController.isLoginWidgetDisplayed.value,
                  visible: !_isLoginForm,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isLoginForm = !_isLoginForm;
                      });
                    },
                    child: RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: "Already have an account?",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: " Sign in!!",
                            style: TextStyle(color: Colors.blue)),
                      ]),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
