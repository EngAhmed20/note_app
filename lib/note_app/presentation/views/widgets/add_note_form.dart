import 'package:flutter/material.dart';

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
  String?title;
  TextEditingController textController=TextEditingController();
  TextEditingController subTextContrlloler=TextEditingController();

  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: form_key,
      child: Column(
        children: [
          SizedBox(height: 40,),
          customTextFiled(title: 'Title',
            controller: textController,
            onSaved:(value){
              title=value;
            },
          ),
          SizedBox(height: 30,),
          customTextFiled(title: 'Content',maxLine: 5,
            controller: subTextContrlloler,
            onSaved: (value){
              subTitle=value;
            },
          ),
          SizedBox(height: 30,),
          customButton(onTap: (){
            if(form_key.currentState!.validate())
            {
              textController.clear();
              subTextContrlloler.clear();
              form_key.currentState!.save();
            }else{
              setState(() {
                autovalidateMode=AutovalidateMode.always;

              });

            }
          },),
          SizedBox(height: 30,),

        ],

      ),
    );
  }
}