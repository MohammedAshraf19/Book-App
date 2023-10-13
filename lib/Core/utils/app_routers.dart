import 'package:books/Features/Search/Presentation/view/search_view.dart';
import 'package:books/Features/home/presentation/view/book_details_view.dart';
import 'package:books/Features/home/presentation/view/home_view.dart';
import 'package:books/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

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
          return const BookDetailsView();
        },
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],

  );
}