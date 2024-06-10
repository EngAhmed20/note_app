import 'package:flutter/material.dart';
import 'package:note_app/note_app/presentation/views/widgets/custom_app_bar.dart';
class noteViewBody extends StatelessWidget {
  const noteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          customAppBar()

        ],
      ),
    );
  }
}
