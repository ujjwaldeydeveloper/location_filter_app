import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool appBarOrientationHorizontal = true;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: appBarOrientationHorizontal ? 0 : 3,
      child: Container(
          // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Locations'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Icon(Icons.arrow_drop_down_sharp),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        appBarOrientationHorizontal =
                            appBarOrientationHorizontal!;
                      });
                    },
                    child: Icon(Icons.access_alarm_sharp),
                  ),
                  SizedBox(width: 10),
                ],
              )
            ],
          )),
    );
  }
}

// @override
//   final Widget title = Text(
//     "Tourism & Co.".toUpperCase(),
//     style: const TextStyle(
//       backgroundColor: Colors.white,
//       color: Colors.black,
//     ),
//   );

//   var result = <Widget>[];

//   List<Widget> _renderFacts() {
//     for (int i = 0; i < 2; i++) {
//       result.add(const Text('data1'));
//       result.add(const Text('data2'));
//     }
//     return result;
//   }
