import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/note_app/presentation/views/widgets/custom_app_bar.dart';
import 'package:note_app/note_app/presentation/views/widgets/notes_list_view.dart';

class noteViewBody extends StatelessWidget {
  const noteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          customAppBar(),
          SizedBox(height: 10),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

