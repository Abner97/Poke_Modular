import 'package:flutter_modular/flutter_modular.dart';
import 'package:poke_modular/features/pokemon/pages/pokemon_page.dart';
import 'package:poke_modular/features/pokemon/services/pokemo_data.service.dart';
import 'package:poke_modular/features/pokemon/widgets/moves.dart';
import 'package:poke_modular/features/pokemon/widgets/other_sprites.dart';

class PokemonModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const PokemonPage(), children: [
          ChildRoute('/moves',
              child: (_, args) => Moves(), transition: TransitionType.scale),
          ChildRoute('/sprites',
              child: (_, args) => OtherSprites(),
              transition: TransitionType.scale),
        ]),
      ];
}
