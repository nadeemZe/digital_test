import 'package:digital_test/constant/style_constant.dart';
import 'package:digital_test/screen/home/home_controller.dart';
import 'package:digital_test/widget/custom_button.dart';
import 'package:digital_test/widget/custom_text_form_field.dart';
import 'package:digital_test/widget/phone_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UpdateInfo extends GetView<HomeController>{
  const UpdateInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Information',style: buttonTextStyle,),
        centerTitle: true,
        backgroundColor: customPurple,
        leading: IconButton(
          onPressed: (){
            Get.toNamed('/home');
          },
          icon: const Icon(Icons.arrow_back_ios),
        )
      ),
      body: Center(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: controller.updateFormkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 17,),
              CustomTextFormField(
                  hint: controller.name.value,
                validator: ((value) {
                  if (value!.length < 3) {
                    return 'Name must be valid';
                  } else {
                    return null;
                  }
                }),
                onChanged: (name){
                    controller.name.value=name!;
                },
              ),
              const SizedBox(height: 17,),
              PhoneTextField(
                  hint: controller.phone.value,
                  country_code: controller.country_code.value,
                validator: ((value) {
                  if (value!.completeNumber.length < 9) {
                    return 'Phone must be valid';
                  } else {
                    return null;
                  }
                }),
                onChange: (phone){
                    controller.country_code.value=phone!.countryCode;
                    controller.phone.value=phone.number;
                },

              ),
              const SizedBox(height: 17,),
              CustomTextFormField(
                  hint: controller.email.value,
                validator: ((value) {
                  if (!value!.isEmail) {
                    return 'Email must be valid';
                  } else {
                    return null;
                  }
                 }),
                  onChanged: (email){
                    controller.email.value=email!;
                  },
              ),
              const SizedBox(height: 20,),
              CustomButton(
                  onPressed: (){
                    controller.save();
                  },
                  text: 'Save',
                  color: customPurple
              )
            ],
          ),
        ),
      ),
    );
  }
}