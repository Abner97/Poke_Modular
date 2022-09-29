import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_modular/models/ability.dart';
import 'package:poke_modular/models/game_index.dart';
import 'package:poke_modular/models/move.dart';
import 'package:poke_modular/models/more_info.dart';
import 'package:poke_modular/models/sprites.dart';
import 'package:poke_modular/models/stat.dart';
import 'package:poke_modular/models/type.dart';
part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Pokemon({
    required List<Ability> abilities,
    required int baseExperience,
    required List<MoreInfo> forms,
    required List<GameIndex> gameIndices,
    required int height,
    required List<dynamic> heldItems,
    required int id,
    required bool isDefault,
    required String locationAreaEncounters,
    required List<Move> moves,
    required String name,
    required int order,
    required List<dynamic> pastTypes,
    required MoreInfo species,
    required Sprites sprites,
    required List<Stat> stats,
    required List<Type> types,
    required int weight,
  }) = _Pokemon;
  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}
