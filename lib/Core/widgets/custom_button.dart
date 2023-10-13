import 'package:books/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,this.borderRadius,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    this.onPressed
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius:borderRadius?? BorderRadius.circular(20),
          ),
        ),
        onPressed: onPressed,
        child:  Text(
          text,
          style: Styles.testStyle16.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold
          ),
      ),
      ),
    );
  }
}
