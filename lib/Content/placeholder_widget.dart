import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Text(
        'Text with color',
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
