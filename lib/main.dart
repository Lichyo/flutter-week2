import 'package:flutter/material.dart';
import 'note_database.dart';
import 'package:flutter_week2/color_pool.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Week 2')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            itemCount: noteDatabase.length,
            itemBuilder: (context, index) {
              final note = noteDatabase[index];
              return NoteCard(title: note.$1, des: note.$2, index: index);
            },
          ),
        ),
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  final String title;
  final String des;
  final int index;
  const NoteCard({
    super.key,
    required this.title,
    required this.des,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorPool[index % colorPool.length],
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            des,
            style: TextStyle(fontSize: 17, color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }
}
