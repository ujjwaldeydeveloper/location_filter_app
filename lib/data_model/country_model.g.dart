// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) => CountryModel(
      name: json['name'] as String,
      flagUrl: json['flagUrl'] as String,
      checked: json['checked'] as bool,
    );

Map<String, dynamic> _$CountryModelToJson(CountryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flagUrl': instance.flagUrl,
      'checked': instance.checked,
    };
