import 'package:dio/dio.dart';
import 'package:poke_modular/constants/endpoints.dart';
import 'package:poke_modular/shared/models/move.dart';
import 'package:poke_modular/shared/models/pokemon.dart';
import 'package:poke_modular/shared/models/pokemon_list.dart';
import 'package:poke_modular/shared/models/sprites.dart';

class PokemonService {
  final Dio dio;

  PokemonService({required this.dio}) {
    dio.options.baseUrl = ApiConstants.BASE_URL;
  }

  Future<Pokemon> getPokemon(String pokemonName) async {
    final pokemonResponse = await dio.get('/$pokemonName');

    if (pokemonResponse.statusCode != 200) {
      throw Exception('error getting pokemon');
    }

    return Pokemon.fromJson(pokemonResponse.data);
  }

  Future<List<Pokemon>> getPokemons([String? nextPokemonsUrl]) async {
    final pokemonResponse = await dio.get('');

    if (pokemonResponse.statusCode != 200) {
      throw Exception('error getting pokemon');
    }

    final pokemonList = PokemonList.fromJson(pokemonResponse.data);

    final pokemonFutures =
        pokemonList.results.map((result) => getPokemon(result.name)).toList();
    return Future.wait(pokemonFutures);
  }
}
