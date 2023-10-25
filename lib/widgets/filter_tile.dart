import 'package:flutter/material.dart';

class FilterTile extends StatelessWidget {
  const FilterTile({super.key});

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
          Image.network('https://dpvr8cthj0mc3.cloudfront.net/hot_emoji.png'),
          SizedBox(width: 10),
          Text('data'),
        ],
      ),
    );
  }
}
