import 'package:flutter/material.dart';
import 'package:location_filter_app/data_model/country_model.dart';
import 'package:location_filter_app/network_services/api_service.dart';
import 'package:location_filter_app/widgets/filter_tile.dart';

import 'mocks/mocks_country.dart';

class FilterDescription extends StatefulWidget {
  const FilterDescription({super.key});

  @override
  State<FilterDescription> createState() => _FilterDescriptionState();
}

class _FilterDescriptionState extends State<FilterDescription> {
  final List<CountryModel> mockCountries = MocksCountry.fetchAll();
  List<CountryModel> _selectedCountry = [];

  bool isChecked = false;
  @override
  void initState() {
    super.initState();
    // loadData();
    _selectedCountry = mockCountries;
  }

  Future<void> loadData() async {
    final data = ApiService.fetchLocation();
  }

  void _runFilter(String enteredKeyword) {
    List<CountryModel> result = [];
    if (enteredKeyword.isEmpty) {
      result = mockCountries;
    } else {
      result = _selectedCountry
          .where((user) =>
              user.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _selectedCountry = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (value) => _runFilter(value),
          decoration: const InputDecoration(
              labelText: 'Filter Locations',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder()),
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            Icon(Icons.close),
            SizedBox(width: 20),
            Text('Clear All'),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _selectedCountry.length,
            itemBuilder: (context, index) {
              return FilterTile(_selectedCountry[index]);
              // return Text('data');
            },
          ),
        ),
      ],
    );
  }
}
