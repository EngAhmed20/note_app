import 'package:flutter/material.dart';
import 'package:note_app/note_app/presentation/views/widgets/custom_app_bar.dart';

import 'custom_text_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          customAppBar(title: 'Edit Note',icon: Icons.check),
          SizedBox(height: 50,),
          customTextFiled(title: 'Title',),
          SizedBox(height: 30,),
          customTextFiled(title: 'Content',maxLine: 5,),

        ],

      ),
    );
  }
}
