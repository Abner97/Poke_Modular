import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poke_modular/features/pokemon/services/pokemo_data.service.dart';
import 'package:poke_modular/services/pokemon_service.dart';
import 'package:poke_modular/shared/models/sprites.dart';
import 'package:poke_modular/shared/models/stat.dart';
import 'package:poke_modular/shared/widgets/pokemon_image.dart';

class OtherSprites extends StatelessWidget {
  const OtherSprites({super.key});

  @override
  Widget build(BuildContext context) {
    Sprites sprites = Modular.get<PokemonData>().getSprites;
    return SingleChildScrollView(
      child: Column(
        children: [
          PokemonImage(
            imgUrl: sprites.frontDefault,
            hero: false,
          ),
          PokemonImage(imgUrl: sprites.backDefault, hero: false),
          PokemonImage(imgUrl: sprites.frontShiny, hero: false),
          PokemonImage(imgUrl: sprites.backShiny, hero: false),
          PokemonImage(imgUrl: sprites.frontFemale, hero: false),
          PokemonImage(imgUrl: sprites.backFemale, hero: false),
          PokemonImage(imgUrl: sprites.frontShinyFemale, hero: false),
          PokemonImage(imgUrl: sprites.backShinyFemale, hero: false),
        ],
      ),
    );
  }
}
