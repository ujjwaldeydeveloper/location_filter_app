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
  List<CountryModel> _searchedCountry = [];
  List<CountryModel> checkedCountry = [];
  bool isChecked = false;
  @override
  void initState() {
    super.initState();
    // loadData();
    _searchedCountry = mockCountries;
  }

  Future<void> loadData() async {
    final data = ApiService.fetchLocation();
  }

  void _runFilter(String enteredKeyword) {
    List<CountryModel> result = [];
    if (enteredKeyword.isEmpty) {
      result = mockCountries;
    } else {
      result = _searchedCountry
          .where((user) =>
              user.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _searchedCountry = result;
    });
  }

  void selectedFilter(bool checked) {
    for (var item in mockCountries) {
      if (item.checked) {
        checkedCountry.add(item);
      }
    }
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
            suffixIcon: Padding(
              padding: EdgeInsets.only(top: 15, right: 5),
              child: Text(
                'checked country list',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            border: OutlineInputBorder(),
          ),
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
            itemCount: _searchedCountry.length,
            itemBuilder: (context, index) {
              return FilterTile(_searchedCountry[index]);
              // return Text('data');
            },
          ),
        ),
      ],
    );
  }

  Widget selectedCountryWidget() {
    return ListView.builder(
        itemCount: checkedCountry.length,
        itemBuilder: ((context, index) {
          return Card(
              elevation: 3,
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(checkedCountry[index].name),
              ));
        }));
  }
}
