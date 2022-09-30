import 'package:freezed_annotation/freezed_annotation.dart';
part 'sprites.freezed.dart';
part 'sprites.g.dart';

@freezed
class Sprites with _$Sprites {
  @JsonSerializable(
    explicitToJson: true,
    fieldRename: FieldRename.snake,
  )
  const factory Sprites({
    required String backDefault,
    required dynamic backFemale,
    required String backShiny,
    required dynamic backShinyFemale,
    required String frontDefault,
    required dynamic frontFemale,
    required String frontShiny,
    required dynamic frontShinyFemale,
    Sprites? animated,
  }) = _Sprites;
  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}
