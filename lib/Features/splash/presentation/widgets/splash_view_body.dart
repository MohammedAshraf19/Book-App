import 'package:books/Core/utils/app_routers.dart';
import 'package:books/Core/utils/assets.dart';
import 'package:books/Core/utils/cache_helper.dart';
import 'package:books/Features/splash/presentation/widgets/sliding_text.dart';
import 'package:books/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;
  @override
  void initState() {
    super.initState();
    initSliderAnimation();
    navigateToHome();
  }



  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
              Assets.logo,
          ),
          const SizedBox(
            height: 5,
          ),
          SlidingText(sliderAnimation: sliderAnimation),
        ],
      ),
    );
  }

  void initSliderAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration:  const Duration(seconds: 20),
    );
    sliderAnimation = Tween<Offset>(begin: const Offset(0, 20),end: Offset.zero).animate(animationController);
    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2),() {
      if(CacheHelper().getData(key: uid) != null){
        GoRouter.of(context).pushReplacement(AppRouters.homeView);
      }
      else if (CacheHelper().getData(key: token) != null)
      {
        GoRouter.of(context).pushReplacement(AppRouters.loginView);
      }
      else{
        GoRouter.of(context).pushReplacement(AppRouters.onBoardingView);
      }
    },);
  }
}

