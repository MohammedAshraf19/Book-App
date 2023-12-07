import 'package:books/Core/utils/api_services.dart';
import 'package:books/Core/utils/app_routers.dart';
import 'package:books/constant.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  ApiServices.init();
  runApp(
    const BooksApp(),
  );
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bookly',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouters.routers,
    );
  }
}