part of 'pokemon.cubit.dart';

@freezed
abstract class PokemonState with _$PokemonState {
  const factory PokemonState.initial() = _Initial;
  const factory PokemonState.loading() = _Loading;
  const factory PokemonState.loaded(List<Pokemon> pokemons) = _Loaded;
  const factory PokemonState.error(String message) = _Error;
  const factory PokemonState.loadPokemon(Pokemon pokemon) = LoadPokemon;
}
