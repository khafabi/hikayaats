// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Module _$ModuleFromJson(Map<String, dynamic> json) => Module(
      name: json['name'] as String,
      numOfCourses: json['numOfCourses'] as int,
      image: json['image'] as String,
      submodules: (json['submodules'] as List<dynamic>)
          .map((e) => Submodule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ModuleToJson(Module instance) => <String, dynamic>{
      'name': instance.name,
      'numOfCourses': instance.numOfCourses,
      'image': instance.image,
      'submodules': instance.submodules,
    };
