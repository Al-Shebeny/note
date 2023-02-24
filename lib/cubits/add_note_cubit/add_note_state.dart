abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoding extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFaluir extends AddNoteState {
  final String errorMassage;

  AddNoteFaluir(this.errorMassage);
}
