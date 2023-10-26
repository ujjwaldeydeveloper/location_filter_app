import 'dart:convert';
import 'dart:io';

import 'endpoint.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static void fetchLocation() async {
    var uri = Endpoint.uri('', queryParameters: {});
    print('uri  -- $uri');

    final response = await http.get(uri);

    if (response.statusCode != HttpStatus.ok) {
      throw (response.body);
    }

    // // List<Location> list = <Location>[];
    // for (var jsonItem in json.decode(response.body)) {
    //   list.add(Location.fromJson(jsonItem));
    // }

    // return list;
    print(jsonDecode(response.body));
  }
}
