
import 'package:flutter/material.dart';

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
   List <Color>itemColor=const [
   Color(0xffD4DCFF),
   Color(0xff7D83FF) ,
   Color(0xff007FFF),
    Color(0xff1AFFD5),
    Color(0xffCBBF7A) ,
    Color(0xffC9BA66),
    Color(0xffF9FBF2),
    Color(0xffffede1),
    Color(0xffd7f9ff),
    Color(0xffafcbff),
    Color(0xffEDD6FF),




  ];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30*2,
      child: ListView.separated(itemBuilder:(context,index)=>GestureDetector(
        onTap: (){
          currentIndex=index;
          setState(() {

          });
        },
        child: ColorItem(
          isActive: currentIndex==index ?true : false,color: itemColor[index],
        ),
      ),
        separatorBuilder:(context,index)=>const SizedBox(width:4,),
        itemCount: itemColor.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}