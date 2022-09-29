import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_modular/models/more_info.dart';
part 'game_index.freezed.dart';
part 'game_index.g.dart';

@freezed
class GameIndex with _$GameIndex {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory GameIndex({
    required int gameIndex,
    required MoreInfo version,
  }) = _GameIndex;
  factory GameIndex.fromJson(Map<String, dynamic> json) =>
      _$GameIndexFromJson(json);
}
