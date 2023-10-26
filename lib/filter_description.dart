import 'package:flutter/material.dart';
import 'package:location_filter_app/model/country_model.dart';
import 'package:location_filter_app/network_services/api_service.dart';
import 'package:location_filter_app/widgets/filter_tile.dart';

import 'mocks/mocks_country.dart';

class FilterDescription extends StatefulWidget {
  const FilterDescription({super.key});

  @override
  State<FilterDescription> createState() => _FilterDescriptionState();
}

class _FilterDescriptionState extends State<FilterDescription> {
  @override
  void initState() {
    super.initState();
    // loadData();
  }

  Future<void> loadData() async {
    final data = ApiService.fetchLocation();
  }

  @override
  Widget build(BuildContext context) {
    final List<CountryModel> mockCountries = MocksCountry.fetchAll();
    return Column(
      children: [
        const Row(
          children: [
            Icon(Icons.close),
            SizedBox(width: 20),
            Text('Clear All'),
          ],
        ),
        SizedBox(
          height: 600,
          child: ListView.builder(
            itemCount: mockCountries.length,
            itemBuilder: (context, index) {
              return FilterTile(mockCountries[index]);
              // return Text('data');
            },
          ),
        ),
      ],
    );
  }
}
