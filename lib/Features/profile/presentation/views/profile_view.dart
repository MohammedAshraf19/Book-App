import 'package:books/Core/utils/cache_helper.dart';
import 'package:books/Features/profile/data/repo/profile_repo_impl.dart';
import 'package:books/Features/profile/presentation/views_model/user_cubit/user_cubit.dart';
import 'package:books/Features/profile/presentation/widgets/profile_view_body.dart';
import 'package:books/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> UserCubit(ProfileRepoImpl())..getUserData(CacheHelper().getData(key: uid)),
      child: const Scaffold(
        body: SafeArea(
            child: ProfileViewBody()
        ),
      ),
    );
  }
}
