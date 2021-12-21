import 'package:hikayaats/screens/authentication/widgets/background.dart';
import 'package:hikayaats/screens/authentication/widgets/body.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(
            child: Body(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(child: Text("Silahkan cek email Anda untuk konfirmasi!"))
            ],
          ),
        ],
      ),
    );
  }
}
