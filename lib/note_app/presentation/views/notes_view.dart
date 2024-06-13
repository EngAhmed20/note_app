import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note_app/presentation/views/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/note_app/presentation/views/widgets/note_view_body.dart';

import '../manager/get_notes_cubit/notes_cubit.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              context: context, builder: (context){
            return addVNoteBottomSheet();
          });
        },
        child:const  Icon(Icons.add,color: Colors.black,),
        ),
       body: SafeArea(child: noteViewBody()),

      ),
    );
  }
}

