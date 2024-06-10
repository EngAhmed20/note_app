import 'package:flutter/material.dart';
import 'custom_serch_icon.dart';
class customAppBar extends StatelessWidget {
  const customAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Notes',style: TextStyle(fontSize: 28),),
        Spacer(),
        customSerachIcon(),
      ],
    );
  }
}

