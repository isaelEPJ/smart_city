// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smart_city/module/SignIn/signIn_controller.dart';
import 'package:smart_city/shared/themes/app_colors.dart';
import 'package:smart_city/shared/themes/app_images.dart';
import 'package:smart_city/shared/themes/app_text_names.dart';
import 'package:smart_city/shared/themes/app_text_styles.dart';
import 'package:smart_city/shared/widgets/social_login/social_login_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    final controller = SignInController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: size.height * .08,
            ),
            Image.asset(AppImages.logoText),
            Image.asset(AppImages.logoFull),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppTextNames.signUpName,
                    style: AppTextStyles.titleHome.copyWith(fontSize: 24),
                  ),
                  Container(
                    height: size.height * .07,
                    // padding: const EdgeInsets.symmetric(vertical: 0),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        label: Text('Email'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * .07,
                    // padding: const EdgeInsets.symmetric(vertical: 0),
                    child: TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        label: Text('Senha'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: size.height * .08,
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    margin: const EdgeInsets.only(bottom: 5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          primary: AppColors.primary,
                          textStyle: AppTextStyles.buttonBackground,
                          onPrimary: AppColors.background),
                      onPressed: () {},
                      child: Text('Criar conta'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Já possui uma conta?',
                        style: AppTextStyles.buttonHeading,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            primary: AppColors.grey,
                            textStyle: AppTextStyles.buttonPrimary),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          'Fazer Login.',
                          style: AppTextStyles.buttonPrimary
                              .copyWith(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: Image.asset(AppImages.cityscapesBackground)),
          ],
        ),
      ),
    );
  }
}
