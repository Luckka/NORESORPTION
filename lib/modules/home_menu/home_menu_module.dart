import 'package:flutter_modular/flutter_modular.dart';
import 'package:noresorption/modules/home_menu/page/home_menu.dart';
import 'package:noresorption/modules/home_menu/page/rre_page.dart';
import 'package:noresorption/modules/home_menu/page/tratamento_rre.dart';
import 'package:noresorption/modules/home_menu/page/tratamento_step2.dart';
import 'package:noresorption/modules/home_menu/page/tratamento_step3.dart';

class HomeMenuModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (args, context) => const HomeMenu()),
        ChildRoute('/rre', child: (args, context) => const RrePage()),
        ChildRoute('/tratamento',
            child: (args, context) => const TratamentoRre()),
        ChildRoute('/tratamento2',
            child: (args, context) => const TratamentoStep2()),

        ChildRoute('/tratamento3',
            child: (args, context) => const TratamentoStep3()),
      ];
}
