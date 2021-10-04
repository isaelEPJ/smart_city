import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_city/module/categories/categories_page.dart';
import 'package:smart_city/module/discovery/discovery_page.dart';
import 'package:smart_city/module/home/home_controller.dart';
import 'package:smart_city/module/profile/profile_page.dart';
import 'package:smart_city/shared/dialogs/greetings_dialog.dart';
import 'package:smart_city/shared/model/user_model.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  HomePage({Key? key, required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  @override
  Widget build(BuildContext context) {
    final pages = [
      CategoriesPage(user: widget.user),
      DiscoveryPage(),
      GreetingsPage(),
      ProfilePage(user: widget.user),
    ];
    return Scaffold(
        body: pages[controller.currentPage],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(.6),
          showUnselectedLabels: true,
          currentIndex: controller.currentPage,
          onTap: (index) {
            setState(() {
              controller.setPage(index);
              // pages[0] = ContentPage(user: widget.user);
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: 'Pesquisa'),
            BottomNavigationBarItem(
                icon: Icon(Icons.table_chart), label: 'Outro'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled), label: 'Perfil')
          ],
        ));
  }
}
