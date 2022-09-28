import 'package:dio/dio.dart';
import 'package:poke_modular/constants/endpoints.dart';
import 'package:poke_modular/models/result.dart';
import '../models/pokemon.dart';

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

  Future<List<Pokemon>> getPokemons() async {
    final pokemonResponse = await _dio.get('');

    if (pokemonResponse.statusCode != 200) {
      throw Exception('error getting pokemon');
    }
    return pokemonResponse.data['results']
        .map<Result>((pokemon) => Pokemon.fromJson(pokemon))
        .toList();
  }

  // getPokemon
}
