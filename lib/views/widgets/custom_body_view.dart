import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/note_cubit/note_cubite.dart';
import 'custom_appbar.dart';
import 'note_list_view.dart';

class CustomBodyView extends StatefulWidget {
  const CustomBodyView({super.key});

  @override
  State<CustomBodyView> createState() => _CustomBodyViewState();
}

class _CustomBodyViewState extends State<CustomBodyView> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchNote();
    super.initState();
  }

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
