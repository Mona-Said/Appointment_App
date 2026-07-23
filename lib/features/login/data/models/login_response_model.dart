import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  String? message;
  Data? data;
  bool? status;
  int? code;

  LoginResponseModel({this.message, this.data, this.status, this.code});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@JsonSerializable()
class Data {
  String? token;
  String? username;

  Data({this.token, this.username});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
