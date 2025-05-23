import 'package:flutter_week2/note.dart';
class NoteService{
  final List <Note> _notes = [//private
    Note(title: '📌 Regularization Techniques in Deep Learning', description: 'Registers are faster and smaller; memory stores larger data.', dateTime: DateTime.now().subtract(const Duration(days: 1))),
    Note(title: '🧠 Difference Between Memory and Registers', description: 'Brief overview of L1, L2, and dropout to prevent overfitting.', dateTime: DateTime.now().subtract(const Duration(days: 2))),
    Note(title: '🔍 Common Git Errors and Fixes', description: 'Covers merge conflicts, detached HEAD, and push issues.', dateTime: DateTime.now().subtract(const Duration(days: 3))),
    Note(title: '🎯 Implementing Animations in Flutter', description: 'Simple guide to use AnimatedContainer and Tween.', dateTime:DateTime.now().subtract(const Duration(days: 4))),
    Note(title: '🛠️ Writing a Simple Web Scraper with Python', description: 'Uses requests and BeautifulSoup to extract web data.', dateTime: DateTime.now().subtract(const Duration(days: 5)))
  ];

  List <Note> get notes => _notes;
  void deleteNote({required int index}){
    _notes.removeAt(index);
  }
}



