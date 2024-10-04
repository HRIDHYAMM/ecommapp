import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart'; // This should match the generated file name

@JsonSerializable()
class User {
  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "name")
  String? name;

  @JsonKey(name: "mobileno")
  int ? mobileno;
User({
  this.id,
  this.name,
  this.mobileno
});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
