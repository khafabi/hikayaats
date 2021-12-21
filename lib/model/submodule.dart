import 'flashcard.dart';

class Submodule {
  final String name;
  final String videoId;
  final String transcript;
  final List<FlashCard> summary;

  Submodule({
    required this.name,
    required this.videoId,
    required this.transcript,
    required this.summary,
  });
}
