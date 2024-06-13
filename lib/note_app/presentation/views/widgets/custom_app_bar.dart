import 'package:flutter/material.dart';
import 'custom_serch_icon.dart';
class customAppBar extends StatelessWidget {
  const customAppBar({super.key,required this.title, required this.icon, this.onTap});
  final String title;
  final IconData icon;
   final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style: TextStyle(fontSize: 28),),
        Spacer(),
        customSerachIcon(icon: icon,onTap: onTap,),
      ],
    );
  }
}

