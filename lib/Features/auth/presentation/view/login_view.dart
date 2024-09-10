import 'package:books/Features/auth/data/repo/auth_repo_impl.dart';
import 'package:books/Features/auth/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:books/Features/auth/presentation/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => LoginCubit(AuthRepoImpl()),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 5,vertical: MediaQuery.of(context).size.height / 20),
            child: const LoginViewBody(),
          )
      ),
    ),
);
  }
}
