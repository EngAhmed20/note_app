import 'package:flutter/material.dart';
import 'package:note_app/primary_color.dart';

import 'note_app/presentation/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: KprimaryColor)
      ),
      home: NotesView(),
      debugShowCheckedModeBanner: false,
    );
  }
}



