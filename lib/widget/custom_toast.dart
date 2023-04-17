import 'package:digital_test/constant/style_constant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class CustomToast{

var fToast = FToast();

  show(context,Color color,String title,String message){
    fToast.init(context!);
    fToast.showToast(
      child: Container(
        width: Get.width,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: buttonTextStyle,),
            const SizedBox(height: 5,),
            Text(message,style: const TextStyle(color: Colors.grey,fontSize: 12),),
          ],
        ),

      ),
    );
  }

}