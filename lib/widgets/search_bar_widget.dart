import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // border: Border(
        //   top: BorderSide(width: 16.0, color: Colors.lightBlue.shade50),
        //   bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
        // ),
        color: Colors.blue.withOpacity(0.1),
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.search_off_rounded),
          ),
          SizedBox(
            width: 16.0,
          ),
          Text('Filter Locations'),
        ],
      ),
    );
  }
}
