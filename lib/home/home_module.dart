




import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guide/home/home_page.dart';
import 'package:guide/home/home_store.dart';
import 'package:guide/home/presentation/presentation_page.dart';
import 'package:guide/repository/investments_repository.dart';

import 'home_table/home_table_page.dart';

class HomeModule extends Module {

  @override
  List<Bind> get binds => [

    Bind((i) => InvestmentsRepository()),

    Bind((i) => HomeStore(repository: i.get()))

  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (BuildContext context, args) => const PresentationPage()),
    ChildRoute("/tables", child: (BuildContext context, args) => const HomeTablePage()),
    ChildRoute("/graphs", child: (BuildContext context, args) => const HomePage()),
  ];


}