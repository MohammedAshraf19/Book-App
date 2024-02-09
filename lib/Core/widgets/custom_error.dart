
import 'package:books/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.error});
  final String error;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Center(
        child: Text(
          error,
          style: Styles.testStyle14,
        ),
      ),
    );
  }
}
