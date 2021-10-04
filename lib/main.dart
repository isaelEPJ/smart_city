import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_city/shared/widgets/app_widget.dart';

void main() {
  runApp(const SmartCityFirebase());
}

class SmartCityFirebase extends StatefulWidget {
  const SmartCityFirebase({Key? key}) : super(key: key);

  @override
  State<SmartCityFirebase> createState() => _SmartCityFirebaseState();
}

class _SmartCityFirebaseState extends State<SmartCityFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Material(
            child: Center(
              child: Text('Nao foi possivel inicializar a aplicaçao'),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        } else {
          return Material(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
