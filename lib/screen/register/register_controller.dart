import 'dart:convert';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../model/user_model/user_model.dart';
import '../../network_api/user_api.dart';
import '../../widget/custom_toast.dart';


class RegisterController extends GetxController {

  var registerFormkey = GlobalKey<FormState>();
  var name = '';
  var phone = '';
  var country_code='';
  var email = '';
  var password = '';
  var password_confirm = '';
  bool passwordVisible = false;
  bool confirmPasswordVisible = false;
  final userApi = UserApi();
  final customToast=CustomToast();

  void passwordIconVisibility() {
    passwordVisible = !passwordVisible;
    update();
  }

  void confirmPasswordIconVisibility() {
    confirmPasswordVisible = !confirmPasswordVisible;
    update();
  }

  register()async{
    if(registerFormkey.currentState!.validate()){
      registerFormkey.currentState!.save();
      EasyLoading.show();
      await userApi.userRegisterApi(email, name, phone,country_code, password, password_confirm).then((value){
        UserModel userModel=UserModel.fromJson(jsonDecode(value.body) as Map<String,dynamic>);
        User? user=userModel.data;
        customToast.show(navigator!.context, Colors.green, "Success",'You registered' );
        Get.toNamed('/home',arguments: user);
      }).onError((error, stackTrace) {
        customToast.show(navigator!.context, Colors.red, "Error!",error.toString() );
      }).whenComplete(() {
        EasyLoading.dismiss();
      });
    }
  }

  loginLabel(){
    Get.toNamed('/login');
  }

}