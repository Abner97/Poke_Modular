import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poke_modular/features/home/home.module.dart';
import 'package:poke_modular/features/pokemon/pokemon.module.dart';
import 'package:poke_modular/features/pokemon/services/pokemo_data.service.dart';

import '../services/pokemon_service.dart';
import 'cubit/pokemon.cubit.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => PokemonService(dio: i.get<Dio>())),
        Bind.singleton((i) => PokemonData()),
        Bind.singleton((i) => Dio()),
        Bind.lazySingleton(
            (i) => PokemonCubit(pokemonService: i.get<PokemonService>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/pokemon',
            transition: TransitionType.rightToLeft, module: PokemonModule())
      ];
}
