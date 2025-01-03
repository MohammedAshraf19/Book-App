import 'package:books/Core/utils/app_routers.dart';
import 'package:books/Core/utils/cache_helper.dart';
import 'package:books/Features/on_boarding/presentation/view_models/on_boarding_cubit/on_boarding_cubit.dart';
import 'package:books/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsetsDirectional.only(top: MediaQuery.of(context).size.height / 7),
        child: IntroductionScreen(
          pages: OnBoardingCubit.get(context).listPagesViewModel,
          showSkipButton: true,
          onSkip: (){
            CacheHelper().saveData(key: token, value: 'token');
            GoRouter.of(context).push(AppRouters.loginView);
          },
          showNextButton: false,
          skip: const Text("Skip"),
          done: const Text("Start"),
          onDone: () {
            CacheHelper().saveData(key: token, value: 'token');
            GoRouter.of(context).push(AppRouters.loginView);
          },
          scrollPhysics: const BouncingScrollPhysics(),
        ),
      );
  }
}
