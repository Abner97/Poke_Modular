import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_modular/models/more_info.dart';
part 'version_group_detail.freezed.dart';

@freezed
class VersionGroupDetail with _$VersionGroupDetail {
  const factory VersionGroupDetail({
    required int levelLearnedAt,
    required MoreInfo moveLearnMethod,
    required MoreInfo versionGroup,
  }) = _VersionGroupDetail;
  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailFromJson(json);
}
