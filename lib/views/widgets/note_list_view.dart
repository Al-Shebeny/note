import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/note_cubit/note_cubite.dart';
import '../../cubits/note_cubit/note_state.dart';
import '../../models/note_model.dart';
import 'custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (BuildContext context, state) {
        List<NoteModel> note = BlocProvider.of<NoteCubit>(context).note ?? [];
        return Expanded(
          child: ListView.builder(
              itemCount: note.length,
              itemBuilder: (context, index) {
                return ItemBody(note: note[index]);
              }),
        );
      },
    );
  }
}
