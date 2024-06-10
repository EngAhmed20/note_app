import 'package:flutter/material.dart';
import 'package:note_app/note_app/presentation/views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add),
      ),
     body: SafeArea(child: noteViewBody()),

    );
  }
}
