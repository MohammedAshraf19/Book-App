import 'package:books/Features/auth/data/repo/auth_repo_impl.dart';
import 'package:books/Features/auth/presentation/view_models/register_cubit/register_cubit.dart';
import 'package:books/Features/auth/presentation/widgets/register_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context)=>RegisterCubit(AuthRepoImpl()),
      child: const Scaffold(
        body: SafeArea(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 5),
              child: RegisterViewBody(),
            )
        ),
      ),
    );
  }
}
