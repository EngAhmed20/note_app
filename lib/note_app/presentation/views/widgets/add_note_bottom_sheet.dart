import 'package:flutter/material.dart';
import 'package:note_app/note_app/presentation/views/widgets/custom_text_filed.dart';

import 'custom_button.dart';

class addVNoteBottomSheet extends StatelessWidget {
  const addVNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            customTextFiled(title: 'Title',),
            SizedBox(height: 30,),
            customTextFiled(title: 'Content',maxLine: 5,),
            SizedBox(height: 30,),
            customButton(onTap: (){},),
            SizedBox(height: 30,),

          ],
        
        ),
      ),
    );
  }
}
