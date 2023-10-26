import 'package:location_filter_app/data_model/country_model.dart';

mixin MocksCountry implements CountryModel {
  static final List<CountryModel> items = [
    CountryModel(
        name: 'Andorra',
        flagUrl: 'https://flagsapi.com/AD/flat/32.png',
        checked: false),
    CountryModel(
        name: 'Bangladesh',
        flagUrl: 'https://flagsapi.com/BD/flat/32.png',
        checked: false),
    CountryModel(
        name: 'Canada',
        flagUrl: 'https://flagsapi.com/CA/flat/32.png',
        checked: false),
    CountryModel(
        name: 'China',
        flagUrl: 'https://flagsapi.com/CN/flat/32.png',
        checked: false),
    CountryModel(
        name: 'United Kingdom',
        flagUrl: 'https://flagsapi.com/GB/flat/32.png',
        checked: false),
    CountryModel(
        name: 'Hong Kong',
        flagUrl: 'https://flagsapi.com/HK/flat/32.png',
        checked: false),
    CountryModel(
        name: 'India',
        flagUrl: 'https://flagsapi.com/IN/flat/32.png',
        checked: false),
    CountryModel(
        name: 'China',
        flagUrl: 'https://flagsapi.com/CN/flat/32.png',
        checked: false),
    CountryModel(
        name: 'Morocco',
        flagUrl: 'https://flagsapi.com/MA/flat/32.png',
        checked: false),
    CountryModel(
        name: 'Nepal',
        flagUrl: 'https://flagsapi.com/NP/flat/32.png',
        checked: false),
    CountryModel(
        name: 'Pakistan',
        flagUrl: 'https://flagsapi.com/PK/flat/32.png',
        checked: false),
    CountryModel(
        name: 'Ukraine',
        flagUrl: 'https://flagsapi.com/UA/flat/32.png',
        checked: false),
  ];

  static List<CountryModel> fetchAll() {
    return MocksCountry.items;
  }
}
