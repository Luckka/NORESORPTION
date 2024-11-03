import 'package:flutter_modular/flutter_modular.dart';

class GrauMenuRouter{
  static const _route = "/grau";

  static Future<void> gotoGrau0() async{
    await Modular.to.pushNamed('$_route/grau0');
  }

  static Future<void> gotoGrau1() async{
    await Modular.to.pushNamed('$_route/grau1');
  }

   static Future<void> gotoGrau2() async{
    await Modular.to.pushNamed('$_route/grau2');
  }

   static Future<void> gotoGrau3() async{
    await Modular.to.pushNamed('$_route/grau3');
  }

   static Future<void> gotoGrau4() async{
    await Modular.to.pushNamed('$_route/grau4');
  }

  static Future<void> gotoWarning0() async{
    await Modular.to.pushNamed('$_route/warning0');
  }
  static Future<void> gotoWarning1() async{
    await Modular.to.pushNamed('$_route/warning1');
  }
  static Future<void> gotoWarning2() async{
    await Modular.to.pushNamed('$_route/warning2');
  }
  static Future<void> gotoWarning3() async{
    await Modular.to.pushNamed('$_route/warning3');
  }
  static Future<void> gotoWarning4() async{
    await Modular.to.pushNamed('$_route/warning4');
  }
}