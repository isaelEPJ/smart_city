import 'package:flutter/material.dart';
import 'package:smart_city/shared/themes/app_colors.dart';
import 'package:smart_city/shared/themes/app_text_styles.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        height: _size.height * .2,
        width: _size.width,
        color: AppColors.background.withOpacity(0.7),
        child: Column(
          children: [
            Container(
              width: _size.width * .8,
              height: _size.height * .1,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: AppColors.primary,
                  elevation: 0,
                ),
                onPressed: () {},
                child: Text(
                  'Usar localização atual',
                  style: AppTextStyles.titleListTile,
                ),
              ),
            ),
            Container(
              width: _size.width * .8,
              height: _size.height * .1,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: AppColors.primary,
                  elevation: 0,
                ),
                onPressed: () {},
                child: Text(
                  'Digitar Localizaçao',
                  style: AppTextStyles.titleListTile,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
