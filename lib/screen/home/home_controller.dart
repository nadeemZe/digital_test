import 'dart:convert';
import 'package:digital_test/screen/home/widget/update_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import '../../model/user_model/user_model.dart';
import '../../network_api/user_api.dart';
import '../../widget/custom_toast.dart';



class HomeController extends GetxController {
  User? user=Get.arguments;
  var name = ''.obs;
  var phone = ''.obs;
  var country_code = ''.obs;
  var email = ''.obs;
  var userApi=UserApi();
  var updateFormkey = GlobalKey<FormState>();
  final customToast=CustomToast();

  @override
  void onReady() {
    super.onReady();
     name.value = user!.name!;
     phone.value = user!.phone!;
     email.value = user!.email!;
  }

  updateTap(){
   Get.to(()=>const UpdateInfo());
  }


  save()async{
    if(updateFormkey.currentState!.validate()){
      updateFormkey.currentState!.save();
      EasyLoading.show();
      await userApi.userUpdateApi(email.value, name.value, phone.value,country_code.value,).then((value){
        UserModel userModel=UserModel.fromJson(jsonDecode(value.body) as Map<String,dynamic>);
        User? user=userModel.data;
        customToast.show(navigator!.context, Colors.green, "Success",'Your information updated' );
        Get.toNamed('/home',arguments: user);
      }).onError((error, stackTrace) {
        customToast.show(navigator!.context, Colors.red, "Error!",error.toString() );
      }).whenComplete(() {
        EasyLoading.dismiss();
      });
    }

  }


}