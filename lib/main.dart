import 'package:books/Features/splash/presentation/views/splash_view.dart';
import 'package:books/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
      const BooksApp(),
  );
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bookly',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
      
      home: SplashView(),
    );
  }
}