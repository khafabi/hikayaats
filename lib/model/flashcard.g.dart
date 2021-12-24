// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlashCard _$FlashCardFromJson(Map<String, dynamic> json) => FlashCard(
      json['question'] as String,
      json['answer'] as String,
    );

Map<String, dynamic> _$FlashCardToJson(FlashCard instance) => <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
    };
