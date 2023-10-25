import 'package:flutter/material.dart';
import 'package:location_filter_app/filter_tile.dart';

class FilterDescription extends StatefulWidget {
  const FilterDescription({super.key});

  @override
  State<FilterDescription> createState() => _FilterDescriptionState();
}

class _FilterDescriptionState extends State<FilterDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Icon(Icons.close),
            SizedBox(width: 20),
            Text('Clear All'),
          ],
        ),
        const FilterTile(),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const FilterTile();
            // return Text('data');
          },
        ),
        // ListView.builder(
        //     itemCount: 5,
        //     itemBuilder: (BuildContext context, int index) {
        //       return ListTile(
        //           leading: const Icon(Icons.list),
        //           trailing: const Text(
        //             "GFG",
        //             style: TextStyle(color: Colors.green, fontSize: 15),
        //           ),
        //           title: Text("List item $index"));
        //     }),
      ],
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ListView.builder(
  //       itemCount: 5,
  //       itemBuilder: (BuildContext context, int index) {
  //         return ListTile(
  //             leading: const Icon(Icons.list),
  //             trailing: const Text(
  //               "GFG",
  //               style: TextStyle(color: Colors.green, fontSize: 15),
  //             ),
  //             title: Text("List item $index"));
  //       });
  // }
}
