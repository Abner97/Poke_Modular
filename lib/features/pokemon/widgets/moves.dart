import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poke_modular/core/cubit/pokemon.cubit.dart';
import 'package:poke_modular/features/pokemon/services/pokemo_data.service.dart';
import 'package:poke_modular/services/pokemon_service.dart';
import 'package:poke_modular/shared/models/move.dart';
import 'package:poke_modular/utils/capitalize.dart';

class Moves extends StatelessWidget {
  const Moves({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Move> moves = Modular.get<PokemonData>().getMoves;
    return ListView.builder(
      itemCount: moves.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              moves[index].move.name.capitalize(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}
