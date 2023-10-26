import 'package:flutter/material.dart';

import 'filter_description.dart';
import 'widgets/search_bar_widget.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    print('isTap value: $isTap');
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isTap = true;
                });
              },
              child: SearchBarWidget(),
            ),
            Visibility(
              visible: isTap,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: FilterDescription(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
