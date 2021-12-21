import 'package:hikayaats/controllers/flashcard_content.dart';
import 'package:hikayaats/model/flashcard.dart';
import 'package:hikayaats/screens/flashcard/widget/flashcard_view.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class Flashcard extends StatelessWidget {
  final List<FlashCard> summaries;

  const Flashcard({
    Key? key,
    required this.summaries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      ChangeNotifierProvider<FlashcardContent>(
        create: (context) => FlashcardContent(),
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<FlashcardContent>(
                  builder: (context, flascardContent, _) => SizedBox(
                    width: 250,
                    height: 250,
                    child: FlipCard(
                      front: FlashcardView(
                        text: summaries[flascardContent.currentIndex].question,
                      ),
                      back: FlashcardView(
                        text: summaries[flascardContent.currentIndex].answer,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Consumer<FlashcardContent>(
                        builder: (context, flashcardContent, _) => SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                padding: EdgeInsets.symmetric(vertical: 8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Text(
                              'Prev',
                              style: kSubtitleTextStyleWhite,
                            ),
                            onPressed: () {
                              flashcardContent.currentIndex =
                                  (flashcardContent.currentIndex - 1 >= 0)
                                      ? flashcardContent.currentIndex - 1
                                      : summaries.length - 1;
                            },
                          ),
                        ),
                      ),
                      Consumer<FlashcardContent>(
                        builder: (context, flashcardContent, _) => SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                padding: EdgeInsets.symmetric(vertical: 8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Text(
                              'Next',
                              style: kSubtitleTextStyleWhite,
                            ),
                            onPressed: () {
                              flashcardContent.currentIndex =
                                  (flashcardContent.currentIndex + 1 <
                                          summaries.length)
                                      ? flashcardContent.currentIndex + 1
                                      : 0;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );

  void showNextCard() {}

  void showPrevCard() {}
}

class FlashButton extends StatelessWidget {
  final String text;
  final void onPress;

  const FlashButton({Key? key, required this.text, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            padding: EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          text,
          style: kSubtitleTextStyleWhite,
        ),
        onPressed: () {
          // ignore: unnecessary_statements
          onPress;
        },
      ),
    );
  }
}
