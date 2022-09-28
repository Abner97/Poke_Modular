import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poke_modular/widgets/pokemon_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon List'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return PokemonContainer();
        }),
      ),
    );
  }
}
