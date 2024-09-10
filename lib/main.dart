import 'package:books/Core/utils/api_services.dart';
import 'package:books/Core/utils/app_routers.dart';
import 'package:books/Core/utils/cache_helper.dart';
import 'package:books/Core/utils/service_locator.dart';
import 'package:books/Features/home/data/repos/home_repo_impl.dart';
import 'package:books/Features/home/presentation/view_models/Feature_Book_Cubit/feature_book_cubit.dart';
import 'package:books/constant.dart';
import 'package:books/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Core/utils/bloc_observer.dart';
import 'Features/home/presentation/view_models/New_Books_Cubit/new_books_cubit.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  setupServiceLocator();
  ApiServices.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  await CacheHelper().init();
  runApp(
    const BooksApp(),
  );
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeatureBookCubit(getIt.get<HomeRepoImpl>())..getFeatureBook()
        ),
        BlocProvider(
            create: (context) => NewBooksCubit(getIt.get<HomeRepoImpl>())..getBestSellerBook()
        ),
      ],
      child: MaterialApp.router(
        title: 'Bookly',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouters.routers,
      ),
    );
  }
}