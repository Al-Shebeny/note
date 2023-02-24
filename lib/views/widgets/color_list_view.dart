import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../const.dart';
import '../../cubits/add_note_cubit/add_note_cubit.dart';
import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int? current;

  //List<Color> colors = colorsList;

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
                  BlocProvider.of<AddNoteCubit>(context).color =
                      colorsList[index];
                  setState(() {});
                },
                child: ColorItem(
                  color: colorsList[index],
                  isSlected: current == null
                      ? false
                      : current == index
                          ? true
                          : false,
                ),
              ),
            );
          }),
    );
  }
}
