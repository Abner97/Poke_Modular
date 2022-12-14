import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_modular/models/more_info.dart';
part 'stat.freezed.dart';
part 'stat.g.dart';

@freezed
class Stat with _$Stat {
  @JsonSerializable(
    explicitToJson: true,
    fieldRename: FieldRename.snake,
  )
  const factory Stat({
    required int baseStat,
    required int effort,
    required MoreInfo stat,
  }) = _Stat;
  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}
