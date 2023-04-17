import 'dart:convert';
import 'package:digital_test/model/user_model/user_model.dart';
import 'package:digital_test/widget/custom_toast.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../network_api/user_api.dart';



class LoginController extends GetxController {

  var loginFormkey = GlobalKey<FormState>();
  var email = '';
  var password = '';
  bool passwordVisible = false;
  final userApi = UserApi();
  final customToast=CustomToast();

  void passwordIconVisibility() {
    passwordVisible = !passwordVisible;
    update();
  }

  login()async{
    //Get.toNamed('/home');
    if(loginFormkey.currentState!.validate()){
      loginFormkey.currentState!.save();
      EasyLoading.show();
      await userApi.userLoginApi(email, password).then((value){
           UserModel userModel=UserModel.fromJson(jsonDecode(value.body) as Map<String,dynamic>);
           User? user=userModel.data;
           customToast.show(navigator!.context, Colors.green, "Success",'You logged in' );
           Get.toNamed('/home',arguments: user);
      }).onError((error, stackTrace) {
        customToast.show(navigator!.context, Colors.red, "Error!",error.toString() );
      }).whenComplete(() {
        EasyLoading.dismiss();
      });
    }

  }

  registerLabel(){
    Get.toNamed('/register');
  }

}