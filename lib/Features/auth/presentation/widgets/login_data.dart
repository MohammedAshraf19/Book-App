import 'package:books/Features/auth/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/widgets/custom_text_form_field.dart';

class LoginData extends StatelessWidget {
  const LoginData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
            prefix: Icons.email_outlined,
            secure: false,
            hint: 'Email',
            textInputType: TextInputType.emailAddress,
            controller: LoginCubit.get(context).emailController
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextFormField(
            prefix: Icons.password_outlined,
            secure: true,
            hint: 'Password',
            textInputType: TextInputType.visiblePassword,
            controller: LoginCubit.get(context).passwordController
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
