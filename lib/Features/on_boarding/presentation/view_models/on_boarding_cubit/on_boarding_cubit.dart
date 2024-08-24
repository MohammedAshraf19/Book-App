import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:meta/meta.dart';

import '../../../../../Core/utils/assets.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  static OnBoardingCubit get(context)=> BlocProvider.of(context);
  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
        title: 'Welcome to Free Book App',
        body: 'Discover thousands of free books across various genres. Start your reading journey today!',
        image: Lottie.asset(Assets.book_1)
    ),
    PageViewModel(
        title: 'View Book Details',
        body: 'Get detailed information about any book, including its summary, author, and reviews.',
        image: Lottie.asset(Assets.book_2)
    ),
    PageViewModel(
        title: 'Search for Your Favorite Free Books',
        body: 'Easily search and find books by title, author, or genre.',
        image: Lottie.asset(Assets.book_3)
    ),
    PageViewModel(
        title: 'Start Your Reading Journey Now!',
        body: 'Get started today and immerse yourself in the world of books.',
        image: Lottie.asset(Assets.book_1)
    ),
  ];
}
