import 'package:flutter/material.dart';
import 'package:flutter_week2/controller/note_service.dart';
import 'view/note_page.dart';

void main() {
  final NoteService noteService = NoteService();
  runApp(
    MaterialApp(home: MyApp(noteService: noteService), theme: ThemeData.dark()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.noteService});
  final NoteService noteService;

  @override
  Widget build(BuildContext context) {
    return NotePage(noteService: noteService);
  }
}
