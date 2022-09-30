// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'more_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoreInfo _$MoreInfoFromJson(Map<String, dynamic> json) {
  return _MoreInfo.fromJson(json);
}

/// @nodoc
mixin _$MoreInfo {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoreInfoCopyWith<MoreInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreInfoCopyWith<$Res> {
  factory $MoreInfoCopyWith(MoreInfo value, $Res Function(MoreInfo) then) =
      _$MoreInfoCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class _$MoreInfoCopyWithImpl<$Res> implements $MoreInfoCopyWith<$Res> {
  _$MoreInfoCopyWithImpl(this._value, this._then);

  final MoreInfo _value;
  // ignore: unused_field
  final $Res Function(MoreInfo) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MoreInfoCopyWith<$Res> implements $MoreInfoCopyWith<$Res> {
  factory _$$_MoreInfoCopyWith(
          _$_MoreInfo value, $Res Function(_$_MoreInfo) then) =
      __$$_MoreInfoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

/// @nodoc
class __$$_MoreInfoCopyWithImpl<$Res> extends _$MoreInfoCopyWithImpl<$Res>
    implements _$$_MoreInfoCopyWith<$Res> {
  __$$_MoreInfoCopyWithImpl(
      _$_MoreInfo _value, $Res Function(_$_MoreInfo) _then)
      : super(_value, (v) => _then(v as _$_MoreInfo));

  @override
  _$_MoreInfo get _value => super._value as _$_MoreInfo;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_MoreInfo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoreInfo implements _MoreInfo {
  const _$_MoreInfo({required this.name, required this.url});

  factory _$_MoreInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MoreInfoFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'MoreInfo(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoreInfo &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_MoreInfoCopyWith<_$_MoreInfo> get copyWith =>
      __$$_MoreInfoCopyWithImpl<_$_MoreInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoreInfoToJson(
      this,
    );
  }
}

abstract class _MoreInfo implements MoreInfo {
  const factory _MoreInfo(
      {required final String name, required final String url}) = _$_MoreInfo;

  factory _MoreInfo.fromJson(Map<String, dynamic> json) = _$_MoreInfo.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_MoreInfoCopyWith<_$_MoreInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
