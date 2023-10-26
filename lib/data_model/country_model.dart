import 'package:json_annotation/json_annotation.dart';

part 'country_model.g.dart';

@JsonSerializable()
class CountryModel {
  final String name;
  final String flagUrl;
  final bool checked;

  CountryModel({
    required this.name,
    required this.flagUrl,
    required this.checked,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}
