import 'package:digital_test/constant/style_constant.dart';
import 'package:digital_test/screen/login/login_controller.dart';
import 'package:digital_test/widget/custom_button.dart';
import 'package:digital_test/widget/custom_text_form_field.dart';
import 'package:digital_test/widget/label_button.dart';
import 'package:digital_test/widget/logo_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController>{
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final node = FocusScope.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: controller.loginFormkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const LogoImage(),
                const SizedBox(height: 20,),
                Text('Login',style: titleTextStyle,),
                const Spacer(),
                CustomTextFormField(
                  onEditingComplete: () {
                    node.nextFocus();
                  },
                  hint: 'Email Address',
                  validator: ((value) {
                    if (value!.length < 3) {
                      return 'Email must be valid';
                    } else {
                      return null;
                    }
                  }),
                  onSaved: (email) {
                    controller.email = email ?? '';
                  },
                ),
                const SizedBox(height: 12,),
                GetBuilder<LoginController>(
                  builder: (controller) {
                    return CustomTextFormField(
                      obscureText: !controller.passwordVisible,
                      hint: 'Password',
                      icon: controller.passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                        onPressed: () {
                          controller.passwordIconVisibility();
                        },
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return 'Password cannot be empty'.tr;
                        } else {
                          return null;
                        }
                      }),
                      onSaved: (password) {
                        controller.password = password ?? '';
                      },
                    );
                  }
                ),
                const SizedBox(height: 51,),
                CustomButton(
                  onPressed: (){
                    controller.login();
                  },
                  text: 'Login',
                  color: customPurple,
                ),
                const Spacer(),
                LabelButton(
                  onTap: (){
                    controller.registerLabel();
                  },
                  title: 'Dont have an account?',
                  subTitle: 'Register',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}