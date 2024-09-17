import 'package:books/Core/functions/custom_snack_bar.dart';
import 'package:books/Core/utils/app_routers.dart';
import 'package:books/Core/widgets/custom_elevated_button.dart';
import 'package:books/Core/widgets/custom_loading.dart';
import 'package:books/Features/auth/presentation/widgets/auth_app_bar.dart';
import 'package:books/Features/auth/presentation/widgets/login_data.dart';
import 'package:books/Features/auth/presentation/widgets/other_login.dart';
import 'package:books/Features/auth/presentation/widgets/regitser_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../Core/utils/styles.dart';
import '../view_models/login_cubit/login_cubit.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return  BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if(state is LoginError){
          customSnackBarError(
              context: context,
              message: state.error
          );
        }
        else if (state is LoginSuccess){
          customSnackBarSuccess(
              context: context,
              message: 'Welcome Again'
          );
          GoRouter.of(context).pushReplacement(AppRouters.homeView);
        }
  },
  builder: (context, state) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AuthAppBar(),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            color: Colors.grey.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 10,horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome, Again!',
                    style: Styles.testStyle20,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const LoginData(),
                  state is LoginLoading ? CustomLoadingItem(width: MediaQuery.of(context).size.width, height: 60):
                  CustomElevatedButton(
                      color: Colors.deepPurple,
                      onPressed: (){
                        if (LoginCubit.get(context).loginFormKey.currentState!.validate()) {
                          LoginCubit.get(context).signIn();
                        }
                      },
                      child: Text(
                        'Continue',
                        style: Styles.testStyle16.copyWith(
                            color: Colors.white
                        ),
                      )
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const OtherLogin(),
                  const RegisterRow(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  },
);
  }
}
