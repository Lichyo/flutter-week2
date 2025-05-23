import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:intl/intl.dart';

class NoteCard extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final VoidCallback onPressed;
  final DateTime date;

  const NoteCard({
    super.key,
    required this.title,
    required this.description,
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
              '$description\n${DateFormat('yyyy-MM-dd').format(date)}',
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
