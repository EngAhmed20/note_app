import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class customButton extends StatelessWidget {
  const customButton( {super.key,this.onTap,this.isLoading=false});
  final void Function()? onTap;
   final bool isLoading;

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
          child:isLoading==true?const SizedBox(height: 25,width: 25,
              child: CircularProgressIndicator(color: Colors.white,)):const Text('Add',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
