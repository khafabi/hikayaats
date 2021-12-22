import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserModel {
  static const ID = "id";
  static const NAME = "name";
  static const EMAIL = "email";

  String? id;
  String? name;
  String? email;

  UserModel({
    this.id,
    this.name,
    this.email,
  });

  UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    name = snapshot.data()![NAME];
    email = snapshot.data()![EMAIL];
    id = snapshot.data()![ID];
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  @override
  List<Object> get props => [];

  @override
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
