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
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Locations',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            actions: const [
              Icon(Icons.minimize),
              SizedBox(width: 32),
              Icon(Icons.arrow_circle_left_rounded),
              SizedBox(width: 32),
            ],
          ),
          body: const Padding(
            padding: EdgeInsets.all(16.0),
            child: FilterDescription(),
          ),
        ),
      ),
    );
  }
}
