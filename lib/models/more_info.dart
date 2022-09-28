import 'package:freezed_annotation/freezed_annotation.dart';
part 'more_info.freezed.dart';

@freezed
class MoreInfo with _$MoreInfo {
  const factory MoreInfo({
    required String name,
    required String url,
  }) = _MoreInfo;
  factory MoreInfo.fromJson(Map<String, dynamic> json) =>
      _$MoreInfoFromJson(json);
}
