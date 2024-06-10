import 'package:flutter/material.dart';
import 'package:note_app/note_app/presentation/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context,index)=> Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: NoteItem(),
        ),itemCount:10,),
    );

  }
}
