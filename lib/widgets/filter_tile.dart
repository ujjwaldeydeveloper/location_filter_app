import 'package:flutter/material.dart';
import 'package:location_filter_app/model/country_model.dart';

class FilterTile extends StatelessWidget {
  final CountryModel mockCountry;

  const FilterTile(this.mockCountry, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Checkbox(
            value: true,
            onChanged: (value) => false,
          ),
          Image.network(mockCountry.flagUrl),
          const SizedBox(width: 10),
          Text(mockCountry.name),
        ],
      ),
    );
  }
}
