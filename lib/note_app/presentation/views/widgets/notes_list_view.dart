import 'package:flutter/material.dart';
import 'package:note_app/note_app/presentation/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context,index)=> Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: NoteItem(),
      ),itemCount:10,);

  }
}
