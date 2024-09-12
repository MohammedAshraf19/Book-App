import 'package:books/Features/auth/presentation/view_models/register_cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/widgets/custom_text_form_field.dart';

class RegisterData extends StatelessWidget {
  const RegisterData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
  builder: (context, state) {
    return Form(
      key: RegisterCubit.get(context).registerFormKey,
      child: Column(
        children: [
          CustomTextFormField(
              prefix: Icons.person_2_outlined,
              secure: false,
              hint: 'Name',
              validate: 'Name',
              textInputType: TextInputType.name,
              controller: RegisterCubit.get(context).nameController
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
              prefix: Icons.phone,
              secure: false,
              hint: 'Phone',
              validate: 'Phone',
              textInputType: TextInputType.number,
              controller: RegisterCubit.get(context).phoneController
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
              prefix: Icons.email_outlined,
              secure: false,
              hint: 'Email',
              validate: 'Email',
              textInputType: TextInputType.emailAddress,
              controller: RegisterCubit.get(context).emailController
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
              prefix: Icons.password_outlined,
              secure: RegisterCubit.get(context).viewPassword,
              hint: 'Password',
            validate: 'Password',
              textInputType: TextInputType.visiblePassword,
              controller: RegisterCubit.get(context).passwordController,
            suffix: IconButton(
              onPressed: (){
                RegisterCubit.get(context).changePasswordView();
              },
              icon: Icon(
                RegisterCubit.get(context).viewPassword?
                Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            prefix: Icons.password_outlined,
            secure: RegisterCubit.get(context).viewPassword,
            hint: 'Confirm Password',
            validate: 'Confirm Password',
            textInputType: TextInputType.visiblePassword,
            controller: RegisterCubit.get(context).confirmPasswordController,
            suffix: IconButton(
              onPressed: (){
                RegisterCubit.get(context).changePasswordView();
              },
              icon: Icon(
                RegisterCubit.get(context).viewPassword?
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
