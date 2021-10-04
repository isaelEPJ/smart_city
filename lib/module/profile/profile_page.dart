import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_city/shared/auth/auth_controller.dart';
import 'package:smart_city/shared/model/user_model.dart';
import 'package:smart_city/shared/themes/app_colors.dart';
import 'package:smart_city/shared/themes/app_text_styles.dart';

class ProfilePage extends StatelessWidget {
  final UserModel user;
  const ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final authController = AuthController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_size.height * .25),
        child: Container(
          width: _size.width,
          height: _size.height * .25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: _size.width * .01,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 65,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    padding: const EdgeInsets.all(10),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: .5),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(user.photoURL ?? ''))),
                  ),
                ],
              ),
              Container(
                width: _size.width * .7,
                height: _size.height * .2,
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: _size.height * .05,
                    ),
                    Text(
                      'Olá,  ${user.name.split(' ')[0]} !',
                      overflow: TextOverflow.fade,
                      style: AppTextStyles.buttonBoldHeading
                          .copyWith(fontSize: 22),
                    ),
                    Text(
                      'Edite aqui Suas informaçoes',
                      overflow: TextOverflow.fade,
                      style: AppTextStyles.buttonHeading.copyWith(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: _size.width,
          height: _size.height * .65,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: _size.width * .9,
                height: _size.height * .1,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: AppColors.shape.withOpacity(0.7),
                    elevation: 0,
                  ),
                  onPressed: () => authController.signOut(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.logout,
                        size: 28,
                        color: AppColors.redDefault,
                      ),
                      SizedBox(
                        width: _size.width * .03,
                      ),
                      Text(
                        'Sair',
                        style: AppTextStyles.titleListTile
                            .copyWith(color: AppColors.redDefault),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: _size.width * .9,
                height: _size.height * .1,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: AppColors.shape.withOpacity(0.7),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.help_outline,
                        size: 28,
                        color: AppColors.grey,
                      ),
                      SizedBox(
                        width: _size.width * .03,
                      ),
                      Text(
                        'Ajuda',
                        style: AppTextStyles.titleListTile,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: _size.width * .9,
                height: _size.height * .1,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: AppColors.shape.withOpacity(0.7),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.person,
                        size: 28,
                        color: AppColors.grey,
                      ),
                      SizedBox(
                        width: _size.width * .03,
                      ),
                      Text(
                        'Informaçoes pessoais',
                        style: AppTextStyles.titleListTile,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: _size.width * .9,
                height: _size.height * .1,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: AppColors.shape.withOpacity(0.7),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.check_mark_circled,
                        size: 28,
                        color: AppColors.grey,
                      ),
                      SizedBox(
                        width: _size.width * .03,
                      ),
                      Text(
                        'Minhas demandas',
                        style: AppTextStyles.titleListTile,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: _size.width * .9,
                height: _size.height * .1,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: AppColors.shape.withOpacity(0.7),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.settings,
                        size: 28,
                        color: AppColors.grey,
                      ),
                      SizedBox(
                        width: _size.width * .03,
                      ),
                      Text(
                        'Configuraçoes de conta',
                        style: AppTextStyles.titleListTile,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: _size.width * .9,
                height: _size.height * .1,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: AppColors.shape.withOpacity(0.7),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.location,
                        size: 28,
                        color: AppColors.grey,
                      ),
                      SizedBox(
                        width: _size.width * .03,
                      ),
                      Text(
                        'Alterar localização',
                        style: AppTextStyles.titleListTile,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
