import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_city/shared/themes/app_colors.dart';
import 'package:smart_city/shared/themes/app_text_styles.dart';

class GreetingsPage extends StatelessWidget {
  const GreetingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: size.width * .8,
              height: size.height * .3,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.stroke),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height * .01,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * .5,
                        ),
                        IconButton(
                          icon: Icon(CupertinoIcons.xmark),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(),
                  Text(
                    'Agradecemos sua Açao!',
                    style: AppTextStyles.titleBoldHeading,
                  ),
                  Text(
                    'Obrigado por participar enviando sua demanda.',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.buttonHeading,
                  ),
                  Container()
                ],
              ),
            ),
            Container(
              width: size.width * .8,
              height: size.height * .1,
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
                child: Text('Ver Estatisticas da minha cidade.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
