import 'package:flutter/cupertino.dart';

import '../../const.dart';
import '../../models/note_model.dart';
import 'color_item.dart';

class EditNoteColorListView extends StatefulWidget {
  const EditNoteColorListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorListView> createState() => _EditNoteColorListViewState();
}

class _EditNoteColorListViewState extends State<EditNoteColorListView> {
  late int current;
  @override
  void initState() {
    current = colorsList.indexOf(Color(widget.note.color));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {
                  current = index;
                  widget.note.color = colorsList[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: colorsList[index],
                  isSlected: current == index ? true : false,
                ),
              ),
            );
          }),
    );
  }
}
