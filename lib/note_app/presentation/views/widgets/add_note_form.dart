import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note_app/models/note_model.dart';
import 'package:note_app/note_app/presentation/manager/add_note_cubit/add_note_cubit.dart';

import 'custom_button.dart';
import 'custom_text_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>form_key=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  TextEditingController textController=TextEditingController();
  TextEditingController subTextContrlloler=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Form(
      key: form_key,
      child: Column(
        children: [
          SizedBox(height: 40,),
          customTextFiled(title: 'Title',
            controller: textController,

          ),
          SizedBox(height: 30,),
          customTextFiled(title: 'Content',maxLine: 5,
            controller: subTextContrlloler,

          ),
          SizedBox(height: 30,),
          BlocBuilder<AddNoteCubit,AddNoteState>(
            builder: (context,state) {
              return customButton(
                isLoading:state is AddNoteLoading?true: false,
                onTap: (){
                if(form_key.currentState!.validate())
                {
                  var note=NoteModel(title: textController.text!, subTitle: subTextContrlloler.text!, date:DateTime.now().toString(), color:Colors.orange.value);
                  textController.clear();
                  subTextContrlloler.clear();
                  form_key.currentState!.save();
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                }else{
                  setState(() {
                    autovalidateMode=AutovalidateMode.always;

                  });

                }
              },);
            }
          ),
          SizedBox(height: 30,),

        ],

      ),
    );
  }
}