import 'package:flutter/material.dart';
import 'package:smart_city/data/catecories_technique_data.dart';
import 'package:smart_city/module/categories/subpages/category_page.dart';
import 'package:smart_city/shared/model/categories.dart';
import 'package:smart_city/shared/model/user_model.dart';
import 'package:smart_city/shared/themes/app_colors.dart';
import 'package:smart_city/shared/themes/app_text_names.dart';
import 'package:smart_city/shared/themes/app_text_styles.dart';

class CategoriesPage extends StatefulWidget {
  final UserModel user;
  const CategoriesPage({Key? key, required this.user}) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_size.height * .2),
        child: Container(
          width: _size.width,
          height: _size.height * .2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                      'Olá,  ${widget.user.name.split(' ')[0]} !',
                      overflow: TextOverflow.fade,
                      style: AppTextStyles.buttonBoldHeading
                          .copyWith(fontSize: 20),
                    ),
                    Text(
                      AppTextNames.descriptionApp,
                      overflow: TextOverflow.fade,
                      style: AppTextStyles.buttonHeading.copyWith(fontSize: 13),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    padding: const EdgeInsets.all(10),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: .5),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(widget.user.photoURL ?? ''))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: _size.height * .71,
        width: _size.width,
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Categorias',
                style: AppTextStyles.titleHome.copyWith(color: Colors.black),
              ),
              Container(
                height: _size.height * .64,
                width: _size.width,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1 / 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    // mainAxisExtent: 2,
                  ),
                  itemCount: CategoriesData.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Categories category = CategoriesData[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryPage(
                                    category: category,
                                  )),
                        );
                        // MaterialPageRoute(
                        //     builder: (context) =>
                        //         CategoryPage(category: category));
                      },
                      child: Container(
                        height: _size.height * .08,
                        width: _size.width * .26,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: AppColors.shape,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 1, child: Center(child: category.icon)),
                            Expanded(
                              flex: 1,
                              child: Text(
                                category.name,
                                textAlign: TextAlign.center,
                                style: AppTextStyles.titleListTile
                                    .copyWith(fontSize: 15),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
