import 'package:digital_test/constant/style_constant.dart';
import 'package:digital_test/screen/welcome/welcome_controller.dart';
import 'package:digital_test/widget/custom_button.dart';
import 'package:digital_test/widget/label_button.dart';
import 'package:digital_test/widget/logo_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeView extends GetView<WelcomeController>{
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const LogoImage(),
          const SizedBox(height: 20,),
          Text('Welcome to the app',style: titleTextStyle,),
          const Spacer(),
          CustomButton(
              onPressed:(){
                controller.loginTapped();
              },
              text: 'Login',
              color: customPurple
          ),
          const SizedBox(height: 12,),
          InkWell(
            onTap: (){
              controller.registerTapped();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: Get.width/1.7,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: customPurple)
              ),
              child: Text(
                'Register',
                style: titleTextStyle,
              ),
            ),
          ),
          const Spacer(),
          LabelButton(
              onTap: (){},
              title: 'Designed & Developed by',
              subTitle: 'Ali Fouad',
          )

        ],
      ),
    );
  }
}