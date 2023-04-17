import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:digital_test/constant/style_constant.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/phone_number.dart';


class PhoneTextField extends StatelessWidget{

  final String hint;
  final String? country_code;
  final IconData? icon;
  final String? Function(PhoneNumber?)? validator;
  final Function(PhoneNumber?)? onSaved;
  final Function(PhoneNumber?)? onChange;

  const PhoneTextField({Key? key,required this.hint,this.country_code,this.icon,this.validator,this.onSaved,this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: Get.width/1.7,
      child: IntlPhoneField(
        onSaved: onSaved,
        onChanged: onChange,
        validator: validator,
        disableLengthCheck: true,
        showDropdownIcon: false,
        flagsButtonMargin: const EdgeInsets.only(left: 5),
        style: textFieldTextStyle,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color:customGrey ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide:  BorderSide(color: customGrey),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          hintStyle: textFieldTextStyle,
          prefixIcon: Icon(icon),
          suffixIcon: Icon(icon)
        ),
        initialCountryCode: country_code??'AE',

      ),
    );
  }
}