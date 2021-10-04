import 'package:flutter/material.dart';
import 'package:smart_city/shared/themes/app_colors.dart';
import 'package:smart_city/shared/themes/app_text_styles.dart';

class HelpDialog extends StatelessWidget {
  const HelpDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 20,
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            primary: AppColors.primary,
            backgroundColor: AppColors.stroke,
          ),
          onPressed: () => Navigator.pop(context),
          child: Text(
            'OK',
            // style: AppTextStyles.buttonBackground,
          ),
        ),
      ],
      title: Text(
        'Precisa de ajuda? entre em contato conosco por esses meios:',
        style: AppTextStyles.titleBoldHeading,
      ),
      content: Container(
        height: MediaQuery.of(context).size.height * .3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'E-mail: isael.ijj@gmail.com',
              style: AppTextStyles.buttonHeading,
            ),
            Text(
              'E-mail: yara5@gmail.com',
              style: AppTextStyles.buttonHeading,
            ),
            Text(
              '........',
              style: AppTextStyles.buttonHeading,
            ),
            Text(
              '0800 0000 0000',
              style: AppTextStyles.buttonHeading,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: AppColors.primary,
                backgroundColor: AppColors.stroke,
              ),
              onPressed: () {},
              child: Text(
                'Mande uma mensagem',
                // style: AppTextStyles.buttonBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
