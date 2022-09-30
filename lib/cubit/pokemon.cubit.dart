import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_modular/models/pokemon.dart';
import 'package:poke_modular/services/pokemon_service.dart';
part 'pokemon.state.dart';
part 'pokemon.cubit.freezed.dart';

class PokemonCubit extends Cubit<PokemonState> {
  final PokemonService _pokemonService = PokemonService();

  PokemonCubit() : super(const PokemonState.initial());

  void loadPokemons() {
    emit(const PokemonState.loading());
    _pokemonService.getPokemons().then((pokemons) {
      emit(PokemonState.loaded(pokemons));
    }).catchError((error) {
      emit(PokemonState.error(error.toString()));
    });
  }

  void pokemonsLoaded(List<Pokemon> pokemons) {
    emit(PokemonState.loaded(pokemons));
  }

  void error(String message) {
    emit(PokemonState.error(message));
  }

  void loadPokemon(Pokemon pokemon) {
    emit(PokemonState.loadPokemon(pokemon));
  }
}
