import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/note_cubit/note_cubite.dart';
import '../../models/note_model.dart';
import '../edit_note_view.dart';

class ItemBody extends StatelessWidget {
  const ItemBody({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (cotext) => EditNoteView(
                      note: note,
                    )));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  note.title,
                  style: const TextStyle(fontSize: 26, color: Colors.black),
                ),
              ),
              subtitle: Text(
                note.supTitle,
                style: TextStyle(
                    fontSize: 20, color: Colors.black.withOpacity(.5)),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NoteCubit>(context).fetchNote();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 35,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 24),
              child: Text(
                note.date,
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
