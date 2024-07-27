import 'package:books/Core/utils/service_locator.dart';
import 'package:books/Features/Search/Presentation/view/search_view.dart';
import 'package:books/Features/Search/Presentation/view_model/search_cubit/search_cubit.dart';
import 'package:books/Features/Search/data/repo/sreach_repo_impl.dart';
import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:books/Features/home/presentation/view/book_details_view.dart';
import 'package:books/Features/home/presentation/view/home_view.dart';
import 'package:books/Features/home/presentation/view_models/similar_books/similar_book_cubit.dart';
import 'package:books/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/data/repos/home_repo_impl.dart';

abstract class AppRouters
{
  static const homeView = '/homeView';
  static const bookDetailsView = '/bookDetailsView';
  static const searchView = '/searchView';
  static final routers = GoRouter
    (
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) {
          return BlocProvider(
              create: (BuildContext context)=> SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child:  BookDetailsView(
                book: state.extra as BookModel,
              ),
          );
        },
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) {
          return BlocProvider(
              create: (BuildContext context)=> SearchCubit(SearchRepoImpl()),
              child: const SearchView());
        },
      ),
    ],

  );
}