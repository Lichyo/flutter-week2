import 'package:flutter_week2/model/note.dart';

class NoteService
{
  final List<Note> _notes =
  [
    Note(title: '📌 Regularization Techniques in Deep Learning', dateTime: DateTime.now().subtract(const Duration(days: 1)), description: 'Brief overview of L1, L2, and dropout to prevent overfitting.'),
    Note(title: '🧠 Difference Between Memory and Registers', dateTime: DateTime.now().subtract(const Duration(days: 2)), description: 'Registers are faster and smaller; memory stores larger data.',),
    Note(title: '🔍 Common Git Errors and Fixes',dateTime:DateTime.now().subtract(const Duration(days: 3)), description:'Covers merge conflicts, detached HEAD, and push issues.'),
    Note(title: '🎯 Implementing Animations in Flutter',dateTime:DateTime.now().subtract(const Duration(days: 4)),description:'Simple guide to use AnimatedContainer and Tween.'),
    Note(title: '🛠️ Writing a Simple Web Scraper with Python',dateTime:DateTime.now().subtract(const Duration(days: 5)),description:'Uses requests and BeautifulSoup to extract web data.'),
  ];

  List<Note> get notes => _notes;

  void deleteNote({required int index})
  {
    _notes.removeAt(index);
  }
}
