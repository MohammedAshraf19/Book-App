import 'package:books/Features/auth/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/utils/assets.dart';
import '../../../../Core/utils/styles.dart';
import '../../../../Core/widgets/custom_elevated_button.dart';
import '../../../../Core/widgets/custom_loading.dart';

class OtherLogin extends StatelessWidget {
  const OtherLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<LoginCubit, LoginState>(
  builder: (context, state) {
    return Column(
      children: [
        const Center(
          child: Text(
            'OR',
            style: Styles.testStyle20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomElevatedButton(
          color: Colors.white.withOpacity(0.8),
          onPressed: (){
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: const AssetImage(Assets.facebook),
                height: MediaQuery.of(context).size.height / 10,
              ),
              Text(
                'Continue With Facebook',
                style: Styles.testStyle16.copyWith(
                    color: Colors.black
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        state is LoginWithGoogleLoading ? CustomLoadingItem(width: MediaQuery.of(context).size.width, height: 60):
        CustomElevatedButton(
            color: Colors.white.withOpacity(0.8),
            onPressed: (){
              LoginCubit.get(context).loginWithGoogle();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: const AssetImage(Assets.google),
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Text(
                  'Continue With Google',
                  style: Styles.testStyle16.copyWith(
                      color: Colors.black
                  ),
                )
              ],
            )
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevatedButton(
            color: Colors.white.withOpacity(0.8),
            onPressed: (){
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: const AssetImage(Assets.apple),
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Text(
                  'Continue With Apple',
                  style: Styles.testStyle16.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            )
        ),

      ],
    );
  },
);
  }
}
