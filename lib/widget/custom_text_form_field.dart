import 'package:flutter/material.dart';
import 'package:digital_test/constant/style_constant.dart';
import 'package:get/get.dart';



class CustomTextFormField extends StatelessWidget{
  final TextEditingController? controller;
  final bool? obscureText;
  final String hint;
  final IconData? icon;
  final IconData? icon1;
  final void Function()? onPressed;
  final Function()? onEditingComplete;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;

  const CustomTextFormField({Key? key,
    this.controller,
    this.obscureText,
    this.icon,
    this.icon1,
    this.onPressed,
    required this.hint,
     this.onSaved,
     this.onEditingComplete,
     this.validator,
     this.onChanged
  }) : super(key: key);

  @override
  Widget build (BuildContext context){
    return SizedBox(
      width: Get.width/1.7,
      child: TextFormField(
        controller:controller,
        obscureText: obscureText ?? false,
        onEditingComplete: onEditingComplete,
        validator: validator,
        onSaved: onSaved,
        onChanged: onChanged,
        cursorColor:customGrey,
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
            suffixIcon: IconButton(
              icon: Icon(
                  icon,
                  color: customGrey),
              onPressed: onPressed,
            ),
          prefixIcon: Icon(icon1),
        ),
      ),
    );
  }
}