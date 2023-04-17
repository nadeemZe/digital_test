import 'package:digital_test/screen/register/register_controller.dart';
import 'package:digital_test/widget/phone_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/style_constant.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text_form_field.dart';
import '../../widget/label_button.dart';
import '../../widget/logo_image.dart';



class RegisterView extends GetView<RegisterController>{
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final node = FocusScope.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: controller.registerFormkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const LogoImage(),
                const SizedBox(height: 20,),
                Text('Register',style: titleTextStyle,),
                const Spacer(),
                CustomTextFormField(
                  onEditingComplete: () {
                    node.nextFocus();
                  },
                  hint: 'Full Name',
                  validator: ((value) {
                    if (value!.length < 3) {
                      return 'Name must be valid';
                    } else {
                      return null;
                    }
                  }),
                  onSaved: (name) {
                    controller.name = name ?? '';
                  },
                ),
                const SizedBox(height: 7,),
                PhoneTextField(
                  hint: 'Phone',
                  validator: ((value) {
                    if (value!.completeNumber.length < 9) {
                      return 'Phone must be valid';
                    } else {
                      return null;
                    }
                  }),
                  onSaved: (phone) {
                    controller.phone = phone!.number;
                    controller.country_code = phone.countryCode;
                  },
                ),
                const SizedBox(height: 7,),
                CustomTextFormField(
                  hint: 'Email Address',
                  validator: ((value) {
                    if (!value!.isEmail) {
                      return 'Email must be valid';
                    } else {
                      return null;
                    }
                  }),
                  onSaved: (email) {
                    controller.email = email ?? '';
                  },
                ),
                const SizedBox(height: 7,),
                GetBuilder<RegisterController>(
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
                      onChanged:(password) {
                        controller.password = password ?? '';
                      } ,
                    );
                  }
                ),
                const SizedBox(height: 7,),
                GetBuilder<RegisterController>(
                  builder: (controller) {
                    return CustomTextFormField(
                      obscureText: !controller.confirmPasswordVisible,
                      hint: 'Confirm Password',
                      icon: controller.confirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      onPressed: () {
                        controller.confirmPasswordIconVisibility();
                      },
                      validator: ((value) {
                        if (value != controller.password) {
                          return 'Confirm Password must match Password '.tr;
                        } else {
                          return null;
                        }
                      }),
                      onSaved: (confirm) {
                        controller.password_confirm = confirm ?? '';
                      },
                    );
                  }
                ),
                const SizedBox(height: 25,),
                CustomButton(
                  onPressed: (){
                    controller.register();
                  },
                  text: 'Register',
                  color: customPurple,
                ),
                const Spacer(),
                LabelButton(
                  onTap: (){
                    controller.loginLabel();
                  },
                  title: 'Already have an account?',
                  subTitle: 'Login',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}