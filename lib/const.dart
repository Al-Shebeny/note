import 'dart:math';

import 'package:flutter/material.dart';

const kColor = Color.fromRGBO(178, 255, 89, 1);
const kNoteBox = 'note box';
List<Color> colorsList = List<Color>.generate(
    15,
    (int index) => Color.fromRGBO(Random().nextInt(256), Random().nextInt(256),
        Random().nextInt(256), 1));
