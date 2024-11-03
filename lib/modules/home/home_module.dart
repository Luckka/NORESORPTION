import 'package:flutter_modular/flutter_modular.dart';
import 'package:noresorption/modules/home_menu/page/home_menu.dart';
import 'package:noresorption/modules/home/pages/home_open_youtube.dart';
import 'package:noresorption/modules/home/pages/home_page.dart';

class HomeModule extends Module{

  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (args,context) => const HomePage()),
    ChildRoute('/home-youtube', child: (args,context) => const HomeOpenYoutube()),
  ];
}