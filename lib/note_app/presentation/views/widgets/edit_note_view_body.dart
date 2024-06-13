import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note_app/presentation/manager/get_notes_cubit/notes_cubit.dart';
import 'package:note_app/note_app/presentation/views/widgets/custom_app_bar.dart';

import '../../../models/note_model.dart';
import 'custom_text_filed.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.item}) : super(key: key);
  final NoteModel item;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
    String? title,content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          customAppBar(title: 'Edit Note',icon: Icons.check,onTap: (){
            widget.item.title=title??widget.item.title;
            widget.item.subTitle=content??widget.item.subTitle;
            widget.item.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.of(context).pop();
          },),
          const SizedBox(height: 50,),
          customTextFiled(title: widget.item.title,onChanged: (value){title=value;},),
          const SizedBox(height: 30,),
          customTextFiled(title: widget.item.subTitle,maxLine: 5,onChanged: (value){content=value;},),

        ],

      ),
    );
  }
}
