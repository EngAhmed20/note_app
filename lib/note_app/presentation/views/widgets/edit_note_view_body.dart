import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note_app/presentation/manager/get_notes_cubit/notes_cubit.dart';
import 'package:note_app/note_app/presentation/views/widgets/custom_app_bar.dart';
import '../../../../constants.dart';
import '../../../models/note_model.dart';
import 'color_list_view.dart';
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
          SizedBox(height: 20,),
         ColorsListView(note: widget.item,),

        ],

      ),
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key,required this.note});
 final NoteModel note;


  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

  late int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex=KItemColor.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30*2,
      child: ListView.separated(itemBuilder:(context,index)=>GestureDetector(
        onTap: (){
          currentIndex=index;
          widget.note.color=KItemColor[index].value;
          setState(() {

          });
        },
        child: ColorItem(
          isActive: currentIndex==index ?true : false,color: KItemColor[index],
        ),
      ),
        separatorBuilder:(context,index)=>const SizedBox(width:4,),
        itemCount: KItemColor.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}