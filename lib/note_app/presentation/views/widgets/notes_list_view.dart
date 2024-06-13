import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note_app/models/note_model.dart';
import 'package:note_app/note_app/presentation/manager/get_notes_cubit/notes_cubit.dart';
import 'package:note_app/note_app/presentation/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotesCubit,NotesState>(
      builder: (context,state) {
        List<NoteModel> notes= BlocProvider.of<NotesCubit>(context).notes??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index)=> Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: NoteItem(item: notes[index],),
            ),itemCount:notes.length,)
        );
      }, listener: (BuildContext context, NotesState state) {  },
    );

  }
}
