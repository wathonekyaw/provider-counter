import 'package:flutter/material.dart';
import '../widgets/counter_buttons.dart';
import '../widgets/counter_display.dart';
import '../widgets/theme_toggle.dart';
import '../widgets/history_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider Counter App'), actions: [ThemeToggle()]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CounterDisplay(),
            SizedBox(height: 20),
            CounterButtons(),
            Divider(height: 40),
            Expanded(child: HistoryList()),
          ],
        ),
      ),
    );
  }
}
