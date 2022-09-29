import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poke_modular/models/pokemon.dart';
import 'package:poke_modular/services/pokemon_service.dart';
import 'package:poke_modular/widgets/pokemon_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Pokemon> _pokemons = [];
  final pokemonService = PokemonService();
  @override
  void initState() {
    _getPokemons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon List'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: _pokemons.map((pokemon) {
          return PokemonContainer(
            imgUrl: pokemon.sprites.frontDefault,
          );
        }).toList(),
      ),
    );
  }

  Future<void> _getPokemons() async {
    final pokemons = await pokemonService.getPokemons();
    setState(() {
      _pokemons = pokemons;
    });
  }
}
