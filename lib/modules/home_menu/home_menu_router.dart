import 'package:flutter_modular/flutter_modular.dart';

class HomeMenuRouter{
  static const _route = "/home-menu";

  static Future<void> gotoRRE() async{
    await Modular.to.pushNamed('$_route/rre');
  }

  static Future<void> gotoTratamento() async{
    await Modular.to.pushNamed('$_route/tratamento');
  }

   static Future<void> gotoTratamento2() async{
    await Modular.to.pushNamed('$_route/tratamento2');
  }

   static Future<void> gotoTratamento3() async{
    await Modular.to.pushNamed('$_route/tratamento3');
  }
}