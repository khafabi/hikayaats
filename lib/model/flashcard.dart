import 'package:json_annotation/json_annotation.dart';

part 'flashcard.g.dart';

@JsonSerializable()
class FlashCard {
  final String question;
  final String answer;

  FlashCard(
    this.question,
    this.answer,
  );

  factory FlashCard.fromJson(Map<String, dynamic> json) =>
      _$FlashCardFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$FlashCardFromJson(json);

  @override
  List<Object> get props => [];

  @override
  Map<String, dynamic> toJson() => _$FlashCardToJson(this);
}
