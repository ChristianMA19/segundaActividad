import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  const W2({Key? key, required this.value}) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.blueGrey; // Color default

    // Change color based on the value
    if (value < 0.4) {
      backgroundColor = Colors.grey; // Change to grey if value is below 0.4
    }

    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color: backgroundColor,
    );
  }
}
