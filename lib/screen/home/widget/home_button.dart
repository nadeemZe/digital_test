import 'package:digital_test/constant/style_constant.dart';
import 'package:flutter/material.dart';



class HomeButton extends StatelessWidget {

  final String text;
  final VoidCallback onTap;

  const HomeButton({Key? key, required this.text, required this.onTap}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin:  const EdgeInsets.all(3),
        padding: const EdgeInsets.all(12),
        color: Colors.white,
        child: Row(
          children: [
            Text(
                text,
              style: homeButtonTextStyle,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
              color: customPurple,
            ),
          ],
        ),
      ),
    );
  }
}
