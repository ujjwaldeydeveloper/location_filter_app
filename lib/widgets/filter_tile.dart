import 'package:flutter/material.dart';
import 'package:location_filter_app/model/country_model.dart';

class FilterTile extends StatefulWidget {
  final CountryModel mockCountry;

  const FilterTile(this.mockCountry, {super.key});

  @override
  State<FilterTile> createState() => _FilterTileState();
}

class _FilterTileState extends State<FilterTile> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Image.network(widget.mockCountry.flagUrl),
          const SizedBox(width: 10),
          Text(widget.mockCountry.name),
        ],
      ),
    );
  }
}
