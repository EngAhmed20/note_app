
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.blue,
    );
  }
}
class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30*2,
      child: ListView.separated(itemBuilder:(context,index)=>ColorItem(),
        separatorBuilder:(context,index)=>const SizedBox(width:4,),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}