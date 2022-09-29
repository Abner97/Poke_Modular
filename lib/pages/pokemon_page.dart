import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:poke_modular/widgets/pokemon-details.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({
    required this.imgUrl,
    super.key,
  });
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon'),
      ),
      body: PokemonDetails(),
    );
  }
}
