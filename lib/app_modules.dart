import 'package:flutter_modular/flutter_modular.dart';
import 'package:noresorption/modules/grau_menu/grau_menu_module.dart';
import 'package:noresorption/modules/home/home_module.dart';
import 'package:noresorption/modules/home_menu/home_menu_module.dart';

class AppModules extends Module{
  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/home-menu', module: HomeMenuModule()),
    ModuleRoute('/grau', module: GrauMenuModule())
  ];
}