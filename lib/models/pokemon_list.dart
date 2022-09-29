import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_modular/models/result.dart';

part 'pokemon_list.freezed.dart';
part 'pokemon_list.g.dart';

@freezed
class PokemonList with _$PokemonList {
  @JsonSerializable(explicitToJson: true)
  const factory PokemonList({
    required int count,
    required String next,
    required List<Result> results,
    String? previous,
  }) = _PokemonList;
  factory PokemonList.fromJson(Map<String, dynamic> json) =>
      _$PokemonListFromJson(json);
}
