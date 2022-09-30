import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_modular/core/cubit/pokemon.cubit.dart';
import 'package:poke_modular/shared/models/pokemon.dart';
import 'package:poke_modular/features/home/widgets/pokemon_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Pokemon> pokemons = [];
  @override
  void initState() {
    super.initState();
    _getPokemons(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PokemonCubit, PokemonState>(
      listener: (context, state) {
        state.maybeWhen(
          loaded: (pokemonList) {
            pokemons = pokemonList;
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pokedex_cover.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: GridView.count(
              crossAxisCount: 2,
              children: pokemons.map((pokemon) {
                return PokemonContainer(
                  pokemon: pokemon,
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  Future<void> _getPokemons(BuildContext context) async {
    context.read<PokemonCubit>().loadPokemons();
  }
}
