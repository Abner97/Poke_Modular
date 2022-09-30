import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poke_modular/core/cubit/pokemon.cubit.dart';
import 'package:poke_modular/shared/models/move.dart';
import 'package:poke_modular/shared/models/pokemon.dart';
import 'package:poke_modular/utils/capitalize.dart';
import 'package:poke_modular/shared/widgets/pokemon_image.dart';

class PokemonDetails extends StatelessWidget {
  const PokemonDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(
      builder: (context, state) {
        final pokemon = _getPokemonInfo(state, context);
        return DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.5,
              image: AssetImage('assets/pokedex.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: PokemonImage(
                      imgUrl: pokemon.sprites.frontDefault, hero: true)),
              Text(pokemon.name.capitalize(),
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Height: ${pokemon.height}'),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Weight: ${pokemon.weight}'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Moves",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      child: Text('Moves'),
                      onPressed: () => Modular.to.pushNamed('/pokemon/moves'),
                    ),
                    ElevatedButton(
                      child: Text('Sprites'),
                      onPressed: () => Modular.to.pushNamed('/pokemon/sprites'),
                    ),
                  ],
                ),
              ),
              Expanded(child: Center(child: RouterOutlet()))
            ],
          ),
        );
      },
    );
  }

  Pokemon _getPokemonInfo(PokemonState state, BuildContext context) {
    if (state is LoadPokemon) {
      return state.pokemon;
    }
    Navigator.pop(context);
    throw Exception('Pokemon not found');
  }
}
