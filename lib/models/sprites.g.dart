// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sprites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sprites _$$_SpritesFromJson(Map<String, dynamic> json) => _$_Sprites(
      backDefault: json['back_default'] as String,
      backFemale: json['back_female'],
      backShiny: json['back_shiny'] as String,
      backShinyFemale: json['back_shiny_female'],
      frontDefault: json['front_default'] as String,
      frontFemale: json['front_female'],
      frontShiny: json['front_shiny'] as String,
      frontShinyFemale: json['front_shiny_female'],
      animated: json['animated'] == null
          ? null
          : Sprites.fromJson(json['animated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SpritesToJson(_$_Sprites instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
      'animated': instance.animated?.toJson(),
    };
