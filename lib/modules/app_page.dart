import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppPage extends StatelessWidget {

  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Guide Review Test',
      theme: ThemeData(primarySwatch: Colors.blue),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }

}
