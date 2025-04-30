import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class CounterButtons extends StatelessWidget {
  const CounterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.read<CounterProvider>();
    return Row(
      children: [
        ElevatedButton.icon(
          onPressed: counter.decrement,

          label: Text('Decrement'),

          icon: Icon(Icons.remove),
        ),

        ElevatedButton.icon(onPressed: counter.reset, label: Text('Reset'), icon: Icon(Icons.loop)),
        ElevatedButton.icon(
          onPressed: counter.increment,
          label: Text('Increment'),
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
