import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'filter_description.dart';
import 'model/my_model.dart';
import 'widgets/search_bar_widget.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isTap = true;

  @override
  Widget build(BuildContext context) {
    print('isTap value: $isTap');
    return ChangeNotifierProvider(
      create: (_) => MyModel(),
      child: Scaffold(
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
          child: FilterDescription(),
        ),
      ),
    );
  }
}
