import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/note_cubit/note_cubite.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_not_color_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, right: 24, left: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: CustomAppbar(
                tittle: 'Edit Note',
                icon: Icons.check,
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.supTitle = title ?? widget.note.supTitle;
                  widget.note.save();
                  BlocProvider.of<NoteCubit>(context).fetchNote();
                  Navigator.pop(context);
                },
              ),
            ),
            CustomTextField(
              hint: widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            CustomTextField(
              onChanged: (value) {
                subTitle = value;
              },
              hint: widget.note.supTitle,
              maxline: 5,
            ),
            EditNoteColorListView(note: widget.note),
          ],
        ),
      ),
    );
  }
}
