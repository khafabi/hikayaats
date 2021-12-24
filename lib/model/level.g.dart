// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Level _$LevelFromJson(Map<String, dynamic> json) => Level(
      name: json['name'] as String?,
      numOfCourses: json['numOfCourses'] as int?,
      image: json['image'] as String?,
      modules: (json['modules'] as List<dynamic>?)
          ?.map((e) => Module.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LevelToJson(Level instance) => <String, dynamic>{
      'name': instance.name,
      'numOfCourses': instance.numOfCourses,
      'image': instance.image,
      'modules': instance.modules,
    };
