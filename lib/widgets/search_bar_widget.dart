import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({required this.items, super.key});

  final String items;

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  // const SearchBarWidget({required super.onPressed, required super.child});
  final myController = TextEditingController();
  final String selectedCountry = "Enter a search term";

  @override
  void initState() {
    super.initState();
    myController.addListener(() {
      // final String text = myController.text.toLowerCase();
      final String text = widget.items;
      myController.value = myController.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const TextField(
      // onChanged: (value) => _runFilter(value),
      decoration: InputDecoration(
        labelText: 'Filter Locations',
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
