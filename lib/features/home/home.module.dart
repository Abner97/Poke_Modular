import 'package:flutter_modular/flutter_modular.dart';
import 'package:poke_modular/features/home/pages/home_page.dart';
import 'package:poke_modular/features/pokemon/pokemon.module.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const HomePage()),
      ];
}
