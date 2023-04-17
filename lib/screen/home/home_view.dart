import 'package:digital_test/constant/style_constant.dart';
import 'package:digital_test/screen/home/home_controller.dart';
import 'package:digital_test/screen/home/widget/home_button.dart';
import 'package:digital_test/screen/home/widget/home_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController>{
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page',style: buttonTextStyle,),
        centerTitle: true,
        backgroundColor: customPurple,
        automaticallyImplyLeading: false,
      ),
      body:Obx(
        ()=>Container(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                HomeText(text:controller.name.value , icon: Icons.person),
                HomeText(text: controller.phone.value, icon: Icons.phone_android),
                HomeText(text: controller.email.value, icon: Icons.email_outlined),
                HomeButton(text: 'Update Information', onTap: (){controller.updateTap();}),
                HomeButton(text: 'Change Password', onTap:  (){}),
                HomeButton(text: 'Delete Account', onTap:  (){}),
                HomeButton(text: 'Logout', onTap:  (){}),
              ],
            ),
          )
      )
    );
  }
}