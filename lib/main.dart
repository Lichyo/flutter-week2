import 'constants.dart';
import 'package:flutter/material.dart';
import 'note_card.dart';

void main() => runApp(MaterialApp(theme: ThemeData.dark(), home: MyApp()));

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> titles = [
    '📌 Regularization Techniques in Deep Learning',
    '🧠 Difference Between Memory and Registers',
    '🔍 Common Git Errors and Fixes',
    '🎯 Implementing Animations in Flutter',
    '🛠️ Writing a Simple Web Scraper with Python',
  ];

  List<String> descriptions = [
    'Brief overview of L1, L2, and dropout to prevent overfitting.',
    'Registers are faster and smaller; memory stores larger data.',
    'Covers merge conflicts, detached HEAD, and push issues.',
    'Simple guide to use AnimatedContainer and Tween.',
    'Uses requests and BeautifulSoup to extract web data.',
  ];

  List<DateTime> dateTimes = [
    DateTime.now().subtract(const Duration(days: 1)),
    DateTime.now().subtract(const Duration(days: 2)),
    DateTime.now().subtract(const Duration(days: 3)),
    DateTime.now().subtract(const Duration(days: 4)),
    DateTime.now().subtract(const Duration(days: 5)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder:
                (BuildContext context) => AlertDialog(
                  title: TextField(onChanged: (value) {}),
                  content: TextField(onChanged: (value) {}),
                ),
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text('Flutter Week 2')),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return NoteCard(
            title: titles[index],
            description: descriptions[index],
            date: dateTimes[index],
            color: colorPool[index % colorPool.length],
            onPressed: () {
              setState(() {
                titles.removeAt(index);
                descriptions.removeAt(index);
                dateTimes.removeAt(index);
              });
            },
          );
        },
      ),
    );
  }
}

