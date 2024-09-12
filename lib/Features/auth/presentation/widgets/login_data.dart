import 'package:books/Features/auth/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/widgets/custom_text_form_field.dart';

class LoginData extends StatelessWidget {
  const LoginData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
  builder: (context, state) {
    return Form(
      key: LoginCubit.get(context).loginFormKey,
      child: Column(
        children: [
          CustomTextFormField(
              prefix: Icons.email_outlined,
              secure: false,
              hint: 'Email',
              validate: 'Email',
              textInputType: TextInputType.emailAddress,
              controller: LoginCubit.get(context).emailController
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
              prefix: Icons.password_outlined,
              validate: 'Password',
              secure: LoginCubit.get(context).viewPassword,
              hint: 'Password',
              textInputType: TextInputType.visiblePassword,
              controller: LoginCubit.get(context).passwordController,
            suffix:
            IconButton(
                onPressed: (){
                  LoginCubit.get(context).changePasswordView();
                },
                icon: Icon(
                  LoginCubit.get(context).viewPassword?
                   Icons.visibility_off
                  : Icons.visibility,
                ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  },
);
  }
}
