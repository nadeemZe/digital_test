

import 'package:flutter/material.dart';
import '../constant/style_constant.dart';
import 'package:get/get.dart';


class LogoImage extends StatelessWidget{
  const LogoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: Get.width/3,
      width: Get.width/3,
      child: Image.asset(logo,),
    );
    
  }
}