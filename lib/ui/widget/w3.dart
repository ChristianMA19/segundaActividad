import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  const W3({
    Key? key,
    required this.value,
    required this.up,
    required this.down,
  }) : super(key: key);

  final double value;
  final VoidCallback up;
  final VoidCallback down;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Text(
              '$value',
              key: const Key('W3Value'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              children: [
                IconButton(
                  onPressed: up,
                  icon: const Icon(Icons.add),
                  key: const Key('W3Add'),
                ),
                IconButton(
                  onPressed: down,
                  icon: const Icon(Icons.remove),
                  key: const Key('W3Sub'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
