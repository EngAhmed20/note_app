import 'package:flutter/material.dart';
import 'package:note_app/note_app/presentation/views/widgets/edit_note_view_body.dart';

import '../../models/note_model.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.item}) : super(key: key);
  final NoteModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: EditNoteViewBody(item: item,
      )),
    );
  }
}
