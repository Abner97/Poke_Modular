import 'package:dio/dio.dart';
import 'package:poke_modular/constants/endpoints.dart';
import 'package:poke_modular/models/pokemon.dart';
import 'package:poke_modular/models/pokemon_list.dart';

class PokemonService {
  final Dio _dio = Dio();
  PokemonService() {
    _dio.options.baseUrl = ApiConstants.BASE_URL;
  }

  Future<Pokemon> getPokemon(String pokemonName) async {
    final pokemonResponse = await _dio.get('/$pokemonName');

    if (pokemonResponse.statusCode != 200) {
      throw Exception('error getting pokemon');
    }

    return Pokemon.fromJson(pokemonResponse.data);
  }

  Future<List<Pokemon>> getPokemons([String? nextPokemonsUrl]) async {
    final pokemonResponse = await _dio.get('');

    if (pokemonResponse.statusCode != 200) {
      throw Exception('error getting pokemon');
    }

    final pokemonList = PokemonList.fromJson(pokemonResponse.data);

    final pokemonFutures =
        pokemonList.results.map((result) => getPokemon(result.name)).toList();
    return Future.wait(pokemonFutures);
  }
}
