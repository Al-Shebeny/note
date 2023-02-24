import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note/cubits/add_note_cubit/add_note_state.dart';
import 'package:note/models/note_model.dart';
import 'package:intl/intl.dart';
import 'custom_botton.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? tittle, supTittle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            hint: tittle ?? 'tittle',
            onSaved: (value) {
              tittle = value;
            },
          ),
          CustomTextField(
            hint: supTittle ?? 'Content',
            maxline: 5,
            onSaved: (value) {
              supTittle = value;
            },
          ),
          const SizedBox(height: 10),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (BuildContext context, state) => CustomBotton(
              isLoding: state is AddNoteLoding ? true : false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var noteModel = NoteModel(
                    title: tittle!,
                    color: Colors.blue.value,
                    supTitle: supTittle!,
                    date: DateFormat.yMMMMd().format(DateTime.now()),
                  );
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
