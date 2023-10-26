import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'filter_description.dart';
import 'widgets/search_bar_widget.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Locations',
          style: TextStyle(
            // backgroundColor: Colors.white,
            // decorationColor: Colors.amber,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(Icons.arrow_drop_down_sharp),
          SizedBox(width: 8),
          Icon(Icons.access_alarm_sharp),
          SizedBox(width: 8),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchBarWidget(),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: FilterDescription(),
            )
          ],
        ),
      ),
    );
  }
}
