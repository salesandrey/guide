


import 'package:flutter_modular/flutter_modular.dart';
import 'package:guide/home/home_module.dart';

class AppModule extends Module {



  @override
  List<ModularRoute> get routes => [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];


}