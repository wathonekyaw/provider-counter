import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/counter_provider.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final history = context.watch<CounterProvider>().history;
    return ListView.builder(
      itemCount: history.length,

      itemBuilder: (context, index) {
        final item = history[history.length - 1 - index];
        return ListTile(leading: Icon(Icons.history), title: Text(item));
      },
    );
  }
}
