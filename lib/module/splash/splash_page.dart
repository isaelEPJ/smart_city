import 'package:flutter/material.dart';
import 'package:smart_city/shared/auth/auth_controller.dart';
import 'package:smart_city/shared/themes/app_colors.dart';
import 'package:smart_city/shared/themes/app_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final controller = AuthController();
    controller.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Image.asset(AppImages.logoFull),
      ),
    );
  }
}
