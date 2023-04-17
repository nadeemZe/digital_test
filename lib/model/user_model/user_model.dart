import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@Freezed()
class UserModel with _$UserModel{

  const factory UserModel({

    required bool? success,
    required String? message,
    required User? data,

  })= _UserModel;

  factory UserModel.fromJson(Map<String,dynamic>json)=>_$UserModelFromJson(json);
}


@Freezed()
class User with _$User{

  const factory User({

    required String? id,
    required String? name,
    required String? country_code,
    required String? phone,
    required String? email,

  })= _User;

  factory User.fromJson(Map<String,dynamic>json)=>_$UserFromJson(json);
}