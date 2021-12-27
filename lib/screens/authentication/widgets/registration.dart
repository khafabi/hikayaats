import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hikayaats/constants/controllers.dart';
import 'package:hikayaats/widget/custom_button.dart';
import 'package:flutter/material.dart';

class RegistrationWidget extends StatelessWidget {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 10,
            )
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Wrap(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                margin: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(.3),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: TextFormField(
                    controller: _fullNameController,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: "Name"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                margin: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(.3),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.email_outlined),
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: "Email"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                margin: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  child: TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      hintText: "Password",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                margin: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  child: TextFormField(
                    obscureText: true,
                    controller: _passwordConfirmationController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      hintText: "Password Confirmation",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: BlocConsumer(
              listener: (BuildContext context, state) {},
              builder: (BuildContext context, Object? state) {
                return CustomButton(
                  bgColor: Colors.blue.shade700,
                  text: "Register",
                  onTap: () {
                    // authController.signUp();
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
