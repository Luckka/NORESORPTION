import 'package:flutter_modular/flutter_modular.dart';
import 'package:noresorption/modules/grau_menu/pages/grau0.dart';
import 'package:noresorption/modules/grau_menu/pages/grau1.dart';
import 'package:noresorption/modules/grau_menu/pages/grau2.dart';
import 'package:noresorption/modules/grau_menu/pages/grau3.dart';
import 'package:noresorption/modules/grau_menu/pages/grau4.dart';
import 'package:noresorption/modules/grau_menu/pages/grau_menu.dart';
import 'package:noresorption/modules/grau_menu/pages/warning0.dart';
import 'package:noresorption/modules/grau_menu/pages/warning1.dart';
import 'package:noresorption/modules/grau_menu/pages/warning2.dart';
import 'package:noresorption/modules/grau_menu/pages/warning3.dart';
import 'package:noresorption/modules/grau_menu/pages/warning4.dart';

class GrauMenuModule extends Module{
  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (args,context) => const GrauMenu()),
    ChildRoute('/grau0', child: (args,context) => const Grau0()),
    ChildRoute('/grau1', child: (args,context) => const Grau1()),
    ChildRoute('/grau2', child: (args,context) => const Grau2()),
    ChildRoute('/grau3', child: (args,contex) => const Grau3()),
    ChildRoute('/grau4', child: (args,context) => const Grau4()),
    ChildRoute('/warning0', child: (args,context) => const Warning0()),
    ChildRoute('/warning1', child: (args,context) => const Warning1()),
    ChildRoute('/warning2', child: (args,context) => const Warning2()),
    ChildRoute('/warning3', child: (args,context) => const Warning3()),
    ChildRoute('/warning4', child: (args,context) => const Warning4()),
  ];
}