

import 'package:flutter/material.dart';
import 'package:get/get.dart';


//constant logo
const logo='assets/logo.png';



//constant color
const customGreen = Color(0xFF67AD5B);
const customGrey = Color(0xFF999999);
const customPurple = Color(0xFF370A45);




// Text Style
TextStyle titleTextStyle = TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width/17, color: customPurple,fontFamily:'Alexandria');
TextStyle textFieldTextStyle = const TextStyle( fontSize: 12, color: customGrey);
TextStyle buttonTextStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Colors.white,fontFamily:'Alexandria');
TextStyle labelButtonTextStyle = const TextStyle(color: customGrey, fontSize: 12,fontFamily:'Alexandria');
TextStyle homeButtonTextStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: customPurple,fontFamily:'Alexandria');