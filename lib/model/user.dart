import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  static const ID = "id";
  static const NAME = "name";
  static const EMAIL = "email";

  final String id;
  final String name;
  final String email;
  final String tingkat;
  final String sekolah;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.tingkat,
    required this.sekolah,
  });

  // UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
  //   name = snapshot.data()![NAME];
  //   email = snapshot.data()![EMAIL];
  //   id = snapshot.data()![ID];
  // }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  @override
  List<Object> get props => [id, name, email, tingkat, sekolah];

  @override
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
