import 'package:freezed_annotation/freezed_annotation.dart';
part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
  @JsonSerializable(
    explicitToJson: true,
  )
  factory Result({
    required String name,
    required String url,
  }) = _Result;
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
