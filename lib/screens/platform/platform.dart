import 'package:hikayaats/model/submodule.dart';
import 'package:hikayaats/screens/flashcard/flashcard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../constants.dart';

class PlatformScreen extends StatelessWidget {
  final Submodule submodule;

  const PlatformScreen({
    Key? key,
    required this.submodule,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 6),
                // child: YoutubePlayerIFrame(
                //   controller: YoutubePlayerController(
                //     initialVideoId: module.videoId,
                //     params: YoutubePlayerParams(
                //       showControls: true,
                //       showFullscreenButton: true,
                //     ),
                //   ),
                //   aspectRatio: 16 / 9,
                // ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  submodule.name,
                  style: kHeadingextStyle,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: SingleChildScrollView(
                    child: Text(submodule.transcript, style: kNormalTextStyle),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(18.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        shape: const StadiumBorder()),
                    child: const Text(
                      'Rangkuman',
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {
                      Get.to(Flashcard(summaries: submodule.summary));
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
