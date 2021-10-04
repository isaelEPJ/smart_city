import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_city/shared/dialogs/help_dialog.dart';
import 'package:smart_city/shared/model/categories.dart';
import 'package:smart_city/shared/themes/app_colors.dart';
import 'package:smart_city/shared/themes/app_text_styles.dart';

class ReportElogio extends StatelessWidget {
  final Categories category;
  const ReportElogio({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textElogioController = TextEditingController();
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => HelpDialog(),
                  ),
              icon: Icon(CupertinoIcons.exclamationmark_circle))
        ],
        iconTheme: IconThemeData(color: Colors.black, size: 30),
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Text(
          category.name,
          style: AppTextStyles.trailingRegular.copyWith(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: _size.width,
          height: _size.height,
          child: Column(
            children: [
              SizedBox(
                height: _size.height * .07,
              ),
              Text(
                'Elogio',
                style: AppTextStyles.titleHome.copyWith(fontSize: 24),
              ),
              Container(
                width: _size.width * .9,
                height: _size.height * .15,
                margin: EdgeInsets.only(top: 20),
                child: TextFormField(
                  maxLines: 10,
                  controller: textElogioController,
                  decoration: InputDecoration(
                    labelText: 'Descreva sua Demanda aqui.',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _size.height * .05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: _size.height * .2,
                      width: _size.width * .4,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.shape,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            CupertinoIcons.camera,
                            size: 35,
                          ),
                          Text(
                            'Tirar uma foto',
                            style: AppTextStyles.buttonHeading,
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: _size.height * .2,
                      width: _size.width * .4,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.shape,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            CupertinoIcons.doc_checkmark,
                            size: 35,
                          ),
                          Text(
                            'Enviar um arquivo',
                            style: AppTextStyles.buttonHeading,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: _size.width * .9,
                height: _size.height * .07,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    'Enviar',
                    style: AppTextStyles.titleListTile,
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
