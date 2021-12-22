import 'flashcard.dart';
import 'package:json_annotation/json_annotation.dart';

part 'submodule.g.dart';

@JsonSerializable()
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

  factory Submodule.fromJson(Map<String, dynamic> json) =>
      _$SubmoduleFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$SubmoduleFromJson(json);

  @override
  List<Object> get props => [];

  @override
  Map<String, dynamic> toJson() => _$SubmoduleToJson(this);
}
