import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Column(
        children: [
          CustomTextField(
            hint: 'Tittle',
          ),
          CustomTextField(
            hint: 'Content',
            maxline: 5,
          )
        ],
      ),
    );
  }
}
