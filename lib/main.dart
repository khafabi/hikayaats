import 'package:hikayaats/constants/firebase.dart';
import 'package:hikayaats/controllers/appController.dart';
import 'package:hikayaats/controllers/authController.dart';
import 'package:hikayaats/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/authentication/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value) {
    Get.put(AppController());
    Get.put(AuthController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Nunito",
      ),
      getPages: [
        GetPage(name: '/', page: () => Splash()),
        GetPage(name: '/authentication', page: () => AuthenticationScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
      ],
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
