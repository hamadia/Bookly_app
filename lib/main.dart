import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

import 'core/utils/app_routes.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme,
      ),
    );
  }
}