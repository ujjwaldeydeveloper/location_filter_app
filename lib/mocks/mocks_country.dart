import 'package:location_filter_app/data_model/country_model.dart';

mixin MocksCountry implements CountryModel {
  static final List<CountryModel> items = [
    CountryModel(
        name: 'Andorra', flagUrl: 'https://flagsapi.com/AD/flat/64.png'),
    CountryModel(
        name: 'Bangladesh', flagUrl: 'https://flagsapi.com/BD/flat/64.png'),
    CountryModel(
        name: 'Canada', flagUrl: 'https://flagsapi.com/CA/flat/64.png'),
    CountryModel(name: 'China', flagUrl: 'https://flagsapi.com/CN/flat/64.png'),
    CountryModel(
        name: 'United Kingdom', flagUrl: 'https://flagsapi.com/GB/flat/64.png'),
    CountryModel(
        name: 'Hong Kong', flagUrl: 'https://flagsapi.com/HK/flat/64.png'),
    CountryModel(
        name: 'Hong Kong', flagUrl: 'https://flagsapi.com/IN/flat/64.png'),
    CountryModel(name: 'China', flagUrl: 'https://flagsapi.com/CN/flat/64.png'),
    CountryModel(
        name: 'Morocco', flagUrl: 'https://flagsapi.com/MA/flat/64.png'),
    CountryModel(name: 'Nepal', flagUrl: 'https://flagsapi.com/NP/flat/64.png'),
    CountryModel(
        name: 'Pakistan', flagUrl: 'https://flagsapi.com/PK/flat/64.png'),
    CountryModel(
        name: 'Ukraine', flagUrl: 'https://flagsapi.com/UA/flat/64.png'),
  ];

  static List<CountryModel> fetchAll() {
    return MocksCountry.items;
  }
}
