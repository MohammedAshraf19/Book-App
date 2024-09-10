import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.onPressed, required this.child, required this.color});

  final Widget child;
  final Color color;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          fixedSize: Size(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height / 13)
      ),
      onPressed: onPressed,
      child:  child,
    );
  }
}
