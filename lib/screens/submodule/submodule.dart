import 'package:hikayaats/model/module.dart';
import 'package:hikayaats/model/submodule.dart';
import 'package:hikayaats/screens/constants.dart';
import 'package:hikayaats/screens/platform/platform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubmoduleScreen extends StatelessWidget {
  final Module module;

  SubmoduleScreen({required this.module});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: const Color(0xFFF5F4EF),
          image: const DecorationImage(
            image: const AssetImage("assets/images/ux_big.png"),
            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ///NAVIGATION
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Get.back();
                          }),
                    ],
                  ),
                  const SizedBox(height: 30),

                  ///NAME
                  Text(module.name, style: kHeadingextStyle),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Course Content", style: kTitleTextStyle),
                          const SizedBox(height: 20),

                          /// MODULES
                          Expanded(
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                final Submodule submodule =
                                    module.submodules[index];
                                return InkWell(
                                  onTap: () {
                                    Get.to(PlatformScreen(submodule: submodule),
                                        arguments: module);
                                  },
                                  child: CourseContent(
                                    number: (index + 1).toString(),
                                    duration: 5.35,
                                    title: submodule.name,
                                  ),
                                );
                              },
                              itemCount: module.submodules.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  final double duration;
  final String title;
  final bool isDone;

  const CourseContent({
    Key? key,
    required this.number,
    required this.duration,
    required this.title,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: kHeadingextStyle.copyWith(
              color: kTextColor.withOpacity(.15),
              fontSize: 32,
            ),
          ),
          const SizedBox(width: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$duration mins\n",
                  style: TextStyle(
                    color: kTextColor.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: title,
                  style: kSubtitleTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kGreenColor.withOpacity(isDone ? 1 : .5),
            ),
            child: const Icon(Icons.play_arrow, color: Colors.white),
          )
        ],
      ),
    );
  }
}
