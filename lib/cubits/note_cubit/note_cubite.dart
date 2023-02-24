import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/const.dart';
import 'package:note/models/note_model.dart';

import 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  List<NoteModel>? note;
  fetchNote() {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    note = noteBox.values.toList();
    emit(Notesuccess());
  }
}
