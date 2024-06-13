import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note_app/presentation/manager/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/note_app/presentation/manager/get_notes_cubit/notes_cubit.dart';
import 'add_note_form.dart';
class addVNoteBottomSheet extends StatelessWidget {
  const addVNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ( context)=>AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit,AddNoteState>(
        listener: (context,state){
          if(state is AddNoteError){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.errMessage),
            ));
          }
          if(state is AddNoteSucess){
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content:  Text('note has already added'),
            ));
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          }
        },
        builder: (context,state){
          return AbsorbPointer(
              absorbing: state is AddNoteLoading?true:false,
              child: Padding(
                padding:  EdgeInsets.only(left: 16,right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: const SingleChildScrollView(child: AddNoteForm()),
              ));
        }
      ),
    );
  }
}


