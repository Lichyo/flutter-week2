import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_week2/color_pool.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

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
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Week 2')),
        body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return NoteCard(
              title: titles[index],
              des: descriptions[index],
              date: dateTimes[index],
              color: colorPool[index % colorPool.length],
              onPressed: () {
                setState(() {
                  titles.removeAt(index);
                  descriptions.removeAt(index);
                });
              },
            );
          },
        ),
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  final String title;
  final String des;
  final Color color;
  final VoidCallback onPressed;
  final DateTime date;

  const NoteCard({
    super.key,
    required this.title,
    required this.des,
    required this.color,
    required this.onPressed,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Material(
          color: color,
          child: ListTile(
            title: Text(title, style: kTitleTextStyle),
            subtitle: Text(
              '$des\n${DateFormat('yyyy-MM-dd').format(date)}',
              style: kSubTitleTextStyle,
            ),
            isThreeLine: true,
            trailing: IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.remove_circle_outline_outlined,
                color: Colors.grey.shade700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
