import 'package:flutter/material.dart';
import 'package:note_app/primary_color.dart';

class customButton extends StatelessWidget {
  const customButton({super.key,this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: KprimaryColor,
        ),
        child: Center(
          child: Text('add',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
