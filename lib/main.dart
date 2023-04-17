import 'package:digital_test/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';



void main() {
  runApp( GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Application",
    getPages: AppPages.routes,
    initialRoute: AppPages.WELCOME,
    builder: EasyLoading.init(),
  ),);
}
