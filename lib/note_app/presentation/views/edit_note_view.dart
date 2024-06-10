import 'package:flutter/material.dart';
import 'package:note_app/note_app/presentation/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: EditNoteViewBody()),
    );
  }
}
