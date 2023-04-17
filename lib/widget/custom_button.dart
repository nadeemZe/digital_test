import 'package:flutter/material.dart';
import '../constant/style_constant.dart';
import 'package:get/get.dart';


class CustomButton extends StatelessWidget{

  final VoidCallback onPressed;
  final String text;
  final Color color;

  const CustomButton({Key? key,required this.onPressed,required this.text,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: Get.width/1.7,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 12)),
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
        ),
        child: Text(
            text,
            style: buttonTextStyle,
            )
      ),
    );
  }
}