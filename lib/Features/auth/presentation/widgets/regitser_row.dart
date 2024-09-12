import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../Core/utils/app_routers.dart';

class RegisterRow extends StatelessWidget {
  const RegisterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Don\'t have an account ?',
        ),
        TextButton(
          onPressed: (){
            GoRouter.of(context).push(AppRouters.registerView);
          },
          child: const Text(
              'Sign Up'
          ),
        ),
      ],
    );
  }
}
