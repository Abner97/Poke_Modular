import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poke_modular/core/app.module.dart';
import 'package:poke_modular/core/cubit/pokemon.cubit.dart';
import 'package:poke_modular/features/home/pages/home_page.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: BlocProvider<PokemonCubit>(
      create: (context) => Modular.get<PokemonCubit>(),
      child: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
