import 'package:hikayaats/model/submodule.dart';
import 'package:json_annotation/json_annotation.dart';

part 'module.g.dart';

@JsonSerializable()
class Module {
  final String name;
  final int numOfCourses;
  final String image;
  final List<Submodule> submodules;

  Module({
    required this.name,
    required this.numOfCourses,
    required this.image,
    required this.submodules,
  }
  );

  factory Module.fromJson(Map<String, dynamic> json) =>
      _$ModuleFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

  @override
  List<Object> get props => [];

  @override
  Map<String, dynamic> toJson() => _$ModuleToJson(this);
}
