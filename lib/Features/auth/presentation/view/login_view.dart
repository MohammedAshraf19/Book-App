import 'package:books/Features/auth/presentation/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 5,vertical: MediaQuery.of(context).size.height / 20),
          child: const LoginViewBody(),
        )
    ),
        );
  }
}
