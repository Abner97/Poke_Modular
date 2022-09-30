import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_modular/cubit/pokemon.cubit.dart';
import 'package:poke_modular/models/pokemon.dart';
import 'package:poke_modular/widgets/pokemon-details.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Pokemon Details'),
          ),
          body: const PokemonDetails(),
        );
      },
    );
  }
}
