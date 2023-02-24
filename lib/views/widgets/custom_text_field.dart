import 'package:flutter/material.dart';

import '../../const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxline = 1,
    this.onSaved,
    this.onChanged,
  });
  final String hint;
  final int maxline;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'field is required';
          } else {
            return null;
          }
        },
        maxLines: maxline,
        cursorColor: kColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: kColor),
          border: outLineBorder(),
          enabledBorder: outLineBorder(),
          focusedBorder: outLineBorder(color: kColor),
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
