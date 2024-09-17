import 'package:books/Features/profile/presentation/views_model/user_cubit/user_cubit.dart';
import 'package:books/Features/profile/presentation/widgets/card_view.dart';
import 'package:books/Features/profile/presentation/widgets/profile_image.dart';
import 'package:books/Features/profile/presentation/widgets/profile_view_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is GetUserDataSuccess){
          return Column(
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
              ProfileImage(
                image: state.userData.image!,
                name: state.userData.name!,
              ),
              const Spacer(),
              CardView(
                email: state.userData.email!,
                phone: state.userData.phone!,
              ),
            ],
          );
        }
        else{
          return  const ProfileViewLoading();
        }
      },
    );
  }
}
