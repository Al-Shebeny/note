import 'package:flutter/material.dart';
import 'package:note/views/edit_note_view.dart';

class ItemBody extends StatelessWidget {
  const ItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (cotext) => const EditNoteView()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffffccb0),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Note Tips',
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
              ),
              subtitle: Text(
                'Build your career with \nM Alshebeny',
                style: TextStyle(
                    fontSize: 20, color: Colors.black.withOpacity(.5)),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 35,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 24),
              child: Text(
                'may 2022',
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
