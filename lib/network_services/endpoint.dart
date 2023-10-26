import 'dart:core';

class Endpoint {
  // NOTE: not realistic! we'll configure environment-specific variables in a soon to be
  // upcoming lesson
  static const apiScheme = 'https';
  static const apiHost = 'restcountries.com';
  static const prefix = 'v3.1/all';

  static Uri uri(String path, {required Map<String, dynamic> queryParameters}) {
    final uri = Uri(
      scheme: apiScheme,
      host: apiHost,
      path: '$prefix$path',
      queryParameters: queryParameters,
    );
    return uri;
  }
}
