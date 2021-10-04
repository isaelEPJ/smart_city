import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_city/module/SignIn/signIn_page.dart';
import 'package:smart_city/module/categories/categories_page.dart';
import 'package:smart_city/module/categories/subpages/category_page.dart';
import 'package:smart_city/module/home/home_page.dart';
import 'package:smart_city/module/splash/splash_page.dart';
import 'package:smart_city/shared/model/categories.dart';
import 'package:smart_city/shared/model/user_model.dart';
import 'package:smart_city/shared/themes/app_colors.dart';
import 'package:smart_city/shared/themes/app_text_names.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTextNames.nameApp,
      theme: ThemeData(primaryColor: AppColors.background),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => SignInPage(),
        '/signup': (context) => SignInPage(),
        '/home': (context) => HomePage(
            user: ModalRoute.of(context)!.settings.arguments as UserModel),
        '/category': (context) => CategoryPage(
            category: ModalRoute.of(context)!.settings.arguments as Categories),
      },
    );
  }
}
