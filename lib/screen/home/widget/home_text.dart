import 'package:digital_test/constant/style_constant.dart';
import 'package:flutter/material.dart';



class HomeText extends StatelessWidget {

  final IconData icon;
  final String text;

  const HomeText({Key? key, required this.text, required this.icon}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
               Icon(
                icon,
                size: 20,
                 color: customPurple,
              ),
              const SizedBox(width: 17,),
              Text(
                text,
                style: textFieldTextStyle,
              ),
            ],
          ),
      );
  }
}
