import 'package:flutter/material.dart';
import 'package:location_filter_app/data_model/country_model.dart';
import 'package:location_filter_app/network_services/api_service.dart';
import 'package:location_filter_app/widgets/filter_tile.dart';

import 'custom_app_bar.dart';
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
  bool orientationHorizontal = true;
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
        // sideBar(),
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

  int _selectedIndex = 0;
  Widget sideBar() {
    final List<String> items = ['Snacks', 'Drinks', 'Food'];
    return Container(
      color: Colors.white,
      child: Column(
        children: items
            .map((e) => Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = items.indexOf(e);
                      });
                    },
                    child: Row(
                      children: [
                        RotatedBox(quarterTurns: 3, child: Text(e)),
                        if (items.indexOf(e) == _selectedIndex)
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.deepOrange,
                              radius: 5.0,
                            ),
                          )
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
