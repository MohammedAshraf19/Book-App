import 'package:books/Features/auth/presentation/view_models/register_cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.prefix,
    super.key,
    required this.secure,
    required this.hint,
    required this.textInputType,
    required this.controller,
    this.suffix, this.validate,
  });
  final IconData prefix;
  final Widget? suffix;
  final String hint;
  final bool secure;
  final TextInputType textInputType;
  final TextEditingController controller;
  final String? validate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(
        color: primaryColor,
      ),
      obscureText: secure,
      keyboardType: textInputType,
      cursorColor: primaryColor.withOpacity(0.5),
      decoration: InputDecoration(
        prefixIcon: Icon(
            prefix
        ),
        suffixIcon: suffix,
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
              color: Colors.white
          ),
        ),
        hintStyle: TextStyle(
          color: primaryColor.withOpacity(0.5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value){
        if (value!.isEmpty) {
          return 'The $validate Must Not Be Empty';
        }
        else if (validate == 'Confirm Password' && (RegisterCubit.get(context).passwordController.text != RegisterCubit.get(context).confirmPasswordController.text)){
          return 'Confirm Password Must Like Password';
        }
        else {
          return null;
        }
      },
    );
  }
}
