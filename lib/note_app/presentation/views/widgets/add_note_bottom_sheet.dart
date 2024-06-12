import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note_app/presentation/manager/add_note_cubit/add_note_cubit.dart';
import 'add_note_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
class addVNoteBottomSheet extends StatelessWidget {
  const addVNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
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
            }
          },
          builder: (context,state){
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading?true:false,
              child:AddNoteForm(),
            );
          }
        ),
      ),
    );
  }
}


