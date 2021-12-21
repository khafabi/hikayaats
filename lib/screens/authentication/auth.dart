import 'package:hikayaats/controllers/appController.dart';
import 'package:hikayaats/screens/authentication/widgets/background.dart';
import 'package:hikayaats/screens/authentication/widgets/body.dart';
import 'package:hikayaats/screens/authentication/widgets/bottom_text.dart';
import 'package:hikayaats/screens/authentication/widgets/login.dart';
import 'package:hikayaats/screens/authentication/widgets/registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationScreen extends StatelessWidget {
  final AppController _appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Obx(
          () => Stack(
            children: [
              Background(
                child: Body(),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.width / 1.3),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 70,
                    ),
                    Visibility(
                        visible: _appController.isLoginWidgetDisplayed.value,
                        child: LoginWidget()),
                    Visibility(
                        visible: !_appController.isLoginWidgetDisplayed.value,
                        child: RegistrationWidget()),
                    SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: _appController.isLoginWidgetDisplayed.value,
                      child: BottomTextWidget(
                        onTap: () {
                          _appController.changeDisplayedAuthWidget();
                        },
                        text1: "Don\'t have an account?",
                        text2: "Create account!",
                      ),
                    ),
                    Visibility(
                      visible: !_appController.isLoginWidgetDisplayed.value,
                      child: BottomTextWidget(
                        onTap: () {
                          _appController.changeDisplayedAuthWidget();
                        },
                        text1: "Already have an account?",
                        text2: "Sign in!!",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
