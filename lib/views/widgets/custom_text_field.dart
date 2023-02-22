import 'package:flutter/material.dart';

import '../../const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxline = 1});
  final String hint;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: TextField(
        maxLines: maxline,
        cursorColor: Kcolor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Kcolor),
          border: outLineBorder(),
          enabledBorder: outLineBorder(),
          focusedBorder: outLineBorder(color: Kcolor),
        ),
      ),
    );
  }

  OutlineInputBorder outLineBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
