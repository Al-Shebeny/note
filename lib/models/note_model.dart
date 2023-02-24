import 'package:hive/hive.dart';
part 'note_model.g.dart';

//flutter packages pub run build_runner build
//to ginerate note_model.g.dart
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String supTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  NoteModel({
    required this.title,
    required this.color,
    required this.supTitle,
    required this.date,
  });
}
