import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poke_modular/core/cubit/pokemon.cubit.dart';
import 'package:poke_modular/features/pokemon/services/pokemo_data.service.dart';
import 'package:poke_modular/shared/models/pokemon.dart';
import 'package:poke_modular/features/pokemon/pages/pokemon_page.dart';
import 'package:poke_modular/shared/widgets/pokemon_image.dart';

class PokemonContainer extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonContainer({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Modular.get<PokemonCubit>().loadPokemon(pokemon);
        Modular.get<PokemonData>().setMoves = pokemon.moves;
        Modular.get<PokemonData>().setSprites = pokemon.sprites;
        Modular.to.pushNamed("/pokemon/moves");
        // Navigator.of(context).push(
        //   MaterialPageRoute(builder: (context) => const PokemonPage()),
        // );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        constraints: const BoxConstraints(minWidth: 100, maxWidth: 200),
        width: MediaQuery.of(context).size.width / 2,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Color.fromRGBO(255, 255, 255, 0.7),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: PokemonImage(
          imgUrl: pokemon.sprites.frontDefault,
          hero: true,
        ),
      ),
    );
  }
}
