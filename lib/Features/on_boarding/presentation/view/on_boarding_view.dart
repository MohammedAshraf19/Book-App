import 'package:books/Features/on_boarding/presentation/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view_models/on_boarding_cubit/on_boarding_cubit.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocProvider(
        create: (context) => OnBoardingCubit(),
        child: const SafeArea(
            child: OnBoardingViewBody()
        ),
      ),
    );
  }
}
