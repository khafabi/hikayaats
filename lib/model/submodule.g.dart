// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submodule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Submodule _$SubmoduleFromJson(Map<String, dynamic> json) => Submodule(
      name: json['name'] as String,
      videoId: json['videoId'] as String,
      transcript: json['transcript'] as String,
      summary: (json['summary'] as List<dynamic>)
          .map((e) => FlashCard.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubmoduleToJson(Submodule instance) => <String, dynamic>{
      'name': instance.name,
      'videoId': instance.videoId,
      'transcript': instance.transcript,
      'summary': instance.summary,
    };
