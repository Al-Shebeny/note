import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_appbar.dart';
import 'package:note/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, right: 24, left: 24),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: CustomAppbar(tittle: 'Edit Note', icon: Icons.check),
            ),
            CustomTextField(hint: 'Tittle'),
            CustomTextField(
              hint: 'Content',
              maxline: 5,
            ),
          ],
        ),
      ),
    );
  }
}
