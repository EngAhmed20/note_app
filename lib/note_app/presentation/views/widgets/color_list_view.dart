
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note_app/presentation/manager/add_note_cubit/add_note_cubit.dart';

import '../../../../constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, this.color});
  final bool isActive;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return isActive?  CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      child:  CircleAvatar(
        radius: 27,
        backgroundColor: color,
      ),
    ): CircleAvatar(
      radius: 30,
      backgroundColor: color,
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30*2,
      child: ListView.separated(itemBuilder:(context,index)=>GestureDetector(
        onTap: (){
          currentIndex=index;
          BlocProvider.of<AddNoteCubit>(context).color=KItemColor[index];
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