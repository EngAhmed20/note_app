import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class customTextFiled extends StatelessWidget {
  const customTextFiled({super.key,  this.maxLine=1, required this.title,this.onSaved,this.controller});
  final int maxLine;
  final String title;
  final TextEditingController? controller;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLine,
      onSaved: onSaved,
      validator: (value)
        {
          if(value!.isEmpty)
          {
            return 'Filed is required';
          }
          return null;
        },
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        border:buildBoarder(),
        enabledBorder: buildBoarder(),
        focusedBorder: buildBoarder(),
        hintText: title,

    )
    );
  }
  OutlineInputBorder buildBoarder([color])
  {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: color??KprimaryColor,
        width: 1,
      ),
    );
  }
}
