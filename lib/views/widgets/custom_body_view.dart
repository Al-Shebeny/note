import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'note_list_view.dart';

class CustomBodyView extends StatelessWidget {
  const CustomBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        children: const [
          CustomAppbar(tittle: 'Note', icon: Icons.search),
          NoteListView(),
        ],
      ),
    );
  }
}
