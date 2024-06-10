import 'package:flutter/material.dart';
import 'package:note_app/primary_color.dart';

class customTextFiled extends StatelessWidget {
  const customTextFiled({super.key,  this.maxLine=1, required this.title});
  final int maxLine;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
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
