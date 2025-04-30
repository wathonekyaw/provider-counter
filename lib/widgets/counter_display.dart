import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final count = context.watch<CounterProvider>().count;
    return Column(
      children: [
        Text('Current Count', style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(height: 10),

        Text('$count', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
