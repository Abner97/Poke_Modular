import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_modular/models/more_info.dart';
part 'ability.freezed.dart';
part 'ability.g.dart';

@freezed
class Ability with _$Ability {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Ability({
    required MoreInfo ability,
    required bool isHidden,
    required int slot,
  }) = _Ability;
  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}
