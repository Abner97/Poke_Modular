import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_modular/models/result.dart';

part 'pokemon_list.freezed.dart';

@freezed
@JsonSerializable(explicitToJson: true)
abstract class PokemonList with _$PokemonList {
  factory PokemonList({
    required int count,
    required String next,
    required String previous,
    required List<Result> results,
  }) = _PokemonList;
  factory PokemonList.fromJson(Map<String, dynamic> json) =>
      _$PokemonListFromJson(json);
}
