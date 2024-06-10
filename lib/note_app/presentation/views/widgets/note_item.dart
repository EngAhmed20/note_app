import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      padding: EdgeInsets.only(top: 16,bottom: 16,left: 16),
      // height: MediaQuery.of(context).size.height*0.26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(fontSize: 28.0, color: Colors.black),
            ),
            trailing:  IconButton(
              icon: Icon(Icons.delete,color:Colors.black,size: 35,),
              onPressed: (){},
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 9),
              child: Text(
                'Flutter is a framework for building beautiful mobile apps.',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text('20 may 2080',style: TextStyle(color: Colors.black.withOpacity(0.4)),),
          ),
        ],
      ),
    );
  }
}
