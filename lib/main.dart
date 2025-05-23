import 'constants.dart';
import 'package:flutter/material.dart';
import 'component/note_card.dart';

import 'model/note.dart';
import 'controller/note_service.dart';

void main() => runApp(MaterialApp(theme: ThemeData.dark(), home: MyApp()));

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final NoteService _noteService = NoteService();

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
        itemCount: _noteService.notes.length,
        itemBuilder: (context, index) {
          return NoteCard(
            note: _noteService.notes[index],
            color: colorPool[index % colorPool.length],
            onPressed: () {
              setState(() {
                _noteService.deleteNote(index: index);
              });
            },
          );
        },
      ),
    );
  }
}
