import 'package:books/Core/functions/custom_snack_bar.dart';
import 'package:books/Features/auth/presentation/view_models/register_cubit/register_cubit.dart';
import 'package:books/Features/auth/presentation/widgets/auth_app_bar.dart';
import 'package:books/Features/auth/presentation/widgets/register_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../Core/utils/styles.dart';
import '../../../../Core/widgets/custom_elevated_button.dart';
import '../../../../Core/widgets/custom_loading.dart';


class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterError){
          customSnackBarError(
              context: context,
              message: state.error
          );
        }
        else if (state is RegisterSuccess){
          customSnackBarSuccess(
              context: context,
              message: 'Register Success, Please Login'
          );
          GoRouter.of(context).pop();
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(

            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                      Icons.arrow_back_ios
                  ),
                ),
              ),
              const AuthAppBar(),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.grey.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 10, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Let\'s Create New Account',
                        style: Styles.testStyle20,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const RegisterData(),
                      state is RegisterLoading ? CustomLoadingItem(width: MediaQuery.of(context).size.width, height: 60):
                      CustomElevatedButton(
                          color: Colors.deepPurple,
                          onPressed: () {
                            RegisterCubit.get(context).register();
                          },
                          child: Text(
                            'Sgn Up',
                            style: Styles.testStyle16.copyWith(
                                color: Colors.white
                            ),
                          )
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
