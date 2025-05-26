import 'package:flutter_week2/constants.dart';
import 'package:flutter_week2/components/note_card.dart';
import 'package:flutter_week2/controller/note_service.dart';
import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key, required this.noteService});
  final NoteService noteService;

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
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
        itemCount: widget.noteService.notes.length,
        itemBuilder: (context, index) {
          return NoteCard(
            note: widget.noteService.notes[index],
            color: colorPool[index % colorPool.length],
            onPressed: () {
              setState(() {
                widget.noteService.deleteNote(index: index);
              });
            },
          );
        },
      ),
    );
  }
}
