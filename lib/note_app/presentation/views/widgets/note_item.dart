import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note_app/models/note_model.dart';
import 'package:note_app/note_app/presentation/manager/get_notes_cubit/notes_cubit.dart';
import 'package:note_app/note_app/presentation/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.item});
  final NoteModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditNoteView()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        padding: EdgeInsets.only(top: 16,bottom: 16,left: 16),
        // height: MediaQuery.of(context).size.height*0.26,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(item.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                item.title,
                style: TextStyle(fontSize: 28.0, color: Colors.black),
              ),
              trailing:  IconButton(
                icon: Icon(Icons.delete,color:Colors.black,size: 35,),
                onPressed: (){
                  item.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
                child: Text(
                  item.subTitle,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(item.date,style: TextStyle(color: Colors.black.withOpacity(0.4)),),
            ),
          ],
        ),
      ),
    );
  }
}
