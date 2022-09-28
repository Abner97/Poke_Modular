import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_modular/models/more_info.dart';
import 'package:poke_modular/models/version_group_detail.dart';
part 'move.freezed.dart';

@freezed
class Move with _$Move {
  const factory Move({
    required MoreInfo move,
    required List<VersionGroupDetail> versionGroupDetails,
  }) = _Move;
  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}
