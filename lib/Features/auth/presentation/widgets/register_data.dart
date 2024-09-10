import 'package:books/Features/auth/presentation/view_models/register_cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/widgets/custom_text_form_field.dart';

class RegisterData extends StatelessWidget {
  const RegisterData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: Column(
        children: [
          CustomTextFormField(
              prefix: Icons.person_2_outlined,
              secure: false,
              hint: 'Name',
              textInputType: TextInputType.name,
              controller: RegisterCubit.get(context).nameController
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
              prefix: Icons.email_outlined,
              secure: false,
              hint: 'Email',
              textInputType: TextInputType.emailAddress,
              controller: RegisterCubit.get(context).emailController
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
              prefix: Icons.password_outlined,
              secure: true,
              hint: 'Password',
              textInputType: TextInputType.visiblePassword,
              controller: RegisterCubit.get(context).passwordController
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
