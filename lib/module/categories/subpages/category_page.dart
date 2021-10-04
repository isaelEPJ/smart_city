import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smart_city/module/report/subReport/report_denuncia.dart';
import 'package:smart_city/module/report/subReport/report_elogio.dart';
import 'package:smart_city/module/report/subReport/report_pergunta.dart';
import 'package:smart_city/module/report/subReport/report_sugestao.dart';
import 'package:smart_city/shared/dialogs/help_dialog.dart';
import 'package:smart_city/shared/model/categories.dart';
import 'package:smart_city/shared/themes/app_colors.dart';
import 'package:smart_city/shared/themes/app_text_styles.dart';

class CategoryPage extends StatefulWidget {
  final Categories category;
  const CategoryPage({Key? key, required this.category}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
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
          widget.category.name,
          style: AppTextStyles.trailingRegular.copyWith(fontSize: 20),
        ),
      ),
      body: Container(
        height: _size.height,
        width: _size.width,
        padding: const EdgeInsets.all(11),
        child: Column(
          children: [
            Container(
              height: _size.height * .2,
              width: _size.width * .5,
              padding: const EdgeInsets.all(11),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  widget.category.icon,
                  Text(
                    widget.category.name,
                    style: AppTextStyles.titleBoldHeading
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              height: _size.height * .6,
              width: _size.width * .8,
              padding: const EdgeInsets.all(11),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReportSugestao(
                              category: widget.category,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Fazer Sugestão',
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
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: AppColors.primary,
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReportDenuncia(
                              category: widget.category,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Fazer Denuncia',
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
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: AppColors.primary,
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReportPergunta(
                              category: widget.category,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Perguntar sobre algo',
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
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: AppColors.primary,
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReportElogio(
                              category: widget.category,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Fazer um elogio',
                        style: AppTextStyles.titleListTile,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
