import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_modular/models/more_info.dart';
part 'type.freezed.dart';

@freezed
class Type with _$Type {
  const factory Type({
    required int slot,
    required MoreInfo type,
  }) = _Type;
  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}
